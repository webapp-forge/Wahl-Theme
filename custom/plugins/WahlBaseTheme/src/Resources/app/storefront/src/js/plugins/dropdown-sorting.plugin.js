import Plugin from 'src/plugin-system/plugin.class';

export default class DropdownSorting extends Plugin {
    static options = {
        selectors: {
            listingSortSelect: '.sorting[data-listing-sorting] select',
            toggleLabel: '.dropdown-toggle__label',
            itemBtn: '.dropdown-item__button',
            directionBtn: '.btn-change-direction',
        },
        attributes: {
            sortKey: 'data-sort-key',
            isAscDirection: 'data-asc-direction',
        },
        classes: {
            selected: 'selected',
        },
    };

    init() {
        this._directionBtn = this.el.querySelector(this.options.selectors.directionBtn);
        this._registerEvents();
        this._syncDirectionFromSelect();
    }

    _registerEvents() {
        this.el.querySelectorAll(this.options.selectors.itemBtn).forEach((btn) => {
            btn.addEventListener('click', this.onItemClick.bind(this));
        });

        this._directionBtn?.addEventListener('click', this.onDirectionClick.bind(this));
    }

    _getSelect() {
        return document.querySelector(this.options.selectors.listingSortSelect);
    }

    _getCurrentValue() {
        return this._getSelect()?.value || '';
    }

    _setListingSort(value) {
        const url = new URL(window.location.href);
        url.searchParams.set('order', value);
        window.location.assign(url.toString());
    }

    _syncDirectionFromSelect() {
        if (!this._directionBtn) return;
        const current = this._getCurrentValue();
        if (current) this._applyDirection(current);
    }

    _applyDirection(value) {
        if (!this._directionBtn) return;
        const hasDirection = value.endsWith('-asc') || value.endsWith('-desc');
        if (hasDirection) {
            this._directionBtn.removeAttribute('disabled');
            this._directionBtn.setAttribute(
                this.options.attributes.isAscDirection,
                value.endsWith('-asc') ? '1' : '0'
            );
        } else {
            this._directionBtn.setAttribute(this.options.attributes.isAscDirection, '1');
            this._directionBtn.setAttribute('disabled', 'true');
        }
    }

    _updateUI(newValue) {
        // Label und selected-Klasse im Dropdown aktualisieren
        const activeBtn = this.el.querySelector(`[${this.options.attributes.sortKey}="${newValue}"]`);
        if (activeBtn) {
            const label = this.el.querySelector(this.options.selectors.toggleLabel);
            if (label) label.textContent = activeBtn.textContent.trim();

            this.el.querySelectorAll(this.options.selectors.itemBtn).forEach((btn) => {
                btn.classList.toggle(this.options.classes.selected, btn === activeBtn);
            });
        }

        // Richtungs-Icon aktualisieren (VOR dem Dispatch, damit es sichtbar ist)
        this._applyDirection(newValue);
    }

    onItemClick({ currentTarget }) {
        const newValue = currentTarget.getAttribute(this.options.attributes.sortKey);
        // UI zuerst aktualisieren – dann Shopware triggern (kann crashen)
        this._updateUI(newValue);
        this._setListingSort(newValue);
    }

    onDirectionClick() {
        const current = this._getCurrentValue();
        let newValue;

        if (current.endsWith('-asc')) {
            newValue = current.slice(0, -4) + '-desc';
        } else if (current.endsWith('-desc')) {
            newValue = current.slice(0, -5) + '-asc';
        } else {
            return;
        }

        // UI zuerst aktualisieren – dann Shopware triggern
        this._updateUI(newValue);
        this._setListingSort(newValue);
    }
}
