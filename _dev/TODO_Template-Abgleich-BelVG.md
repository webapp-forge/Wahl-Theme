# Template Abgleich BelVG

Abgleich aller Templates aus den BelVG-Originalthemes mit dem neuen Wahl-Theme-System.

## Legende

| Symbol | Bedeutung |
|--------|-----------|
| `[ ]`  | Noch nicht bearbeitet |
| `[?]`  | Datei vorhanden, aber inhaltlich noch nicht mit BelVG verglichen |
| `[x]`  | Vollständig abgeglichen und abgenommen |
| `[~]`  | In Bearbeitung |
| `[-]`  | Nicht benötigt / bewusst weggelassen |
| `[B]`  | Abgedeckt durch WahlBaseTheme (ebenfalls noch zu prüfen) |

**Zuständigkeit:** Base = WahlBaseTheme · A = WahlAgrarTheme · R = WahlReitsportTheme

---

## AGRAR (BelVG_Agrar_original)

### Administration
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/categories-in-row/component/sw-cms-block-categories-in-row.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/categories-in-row/preview/sw-cms-preview-categories-in-row.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/category-grid/component/sw-cms-block-category-grid.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/category-grid/preview/sw-cms-preview-category-grid.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/slider-with-caption/component/sw-cms-block-slider-with-caption.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/slider-with-caption/preview/sw-cms-preview-slider-with-caption.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/two-image-text/component/sw-cms-block-two-image-text.html.twig` |
| `[ ]`  | A | `app/administration/sw-cms/blocks/text-image/two-image-text/preview/sw-cms-preview-two-image-text.html.twig` |
| `[ ]`  | A | `app/administration/sw-order/page/sw-order-list/sw-order-list.html.twig` |

### Storefront – base.html.twig
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[B]`  | Base | `views/storefront/base.html.twig` |

### Storefront – block/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/block/cms-block-buy-box-heading.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-categories-in-row.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-category-grid.html.twig` |
| `[?]`  | A | `views/storefront/block/cms-block-category-navigation.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-gallery-buybox.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-product-heading.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-sidebar-filter.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-slider-with-caption.html.twig` |
| `[ ]`  | A | `views/storefront/block/cms-block-two-image-text.html.twig` |

### Storefront – component/account/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/account/login.html.twig` |
| `[ ]`  | A | `views/storefront/component/account/register.html.twig` |

### Storefront – component/address/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/address/address-editor-modal-create-address.html.twig` |
| `[ ]`  | A | `views/storefront/component/address/address-form.html.twig` |
| `[ ]`  | A | `views/storefront/component/address/address-personal.html.twig` |

### Storefront – component/buy-widget/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/buy-widget/buy-widget-form.html.twig` |
| `[ ]`  | A | `views/storefront/component/buy-widget/buy-widget-price-table.html.twig` |
| `[ ]`  | A | `views/storefront/component/buy-widget/buy-widget-price.html.twig` |
| `[ ]`  | A | `views/storefront/component/buy-widget/buy-widget.html.twig` |
| `[ ]`  | A | `views/storefront/component/buy-widget/configurator.html.twig` |
| `[ ]`  | A | `views/storefront/component/buy-widget/configurator/select.html.twig` |

### Storefront – component/captcha/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/captcha/LaenenCloudflareTurnstile.html.twig` |

### Storefront – component/checkout/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/checkout/offcanvas-cart-summary.html.twig` |
| `[ ]`  | A | `views/storefront/component/checkout/offcanvas-cart.html.twig` |

### Storefront – component/delivery-information
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/delivery-information.html.twig` |

### Storefront – component/element/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/element/cms-element-form/form-components/cms-element-form-select-salutation.html.twig` |
| `[ ]`  | A | `views/storefront/component/element/cms-element-product-description-reviews.html.twig` |

### Storefront – component/line-item/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/line-item/element/children-wrapper.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/delivery-date.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/download-item.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/downloads.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/image.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/label.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/quantity.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/remove.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/tax-price.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/total-price.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/unit-price.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/element/variant-characteristics.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/line-item.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/type/discount.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/type/product.html.twig` |
| `[ ]`  | A | `views/storefront/component/line-item/type/product_bigcart.html.twig` |

### Storefront – component/product/card/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | A | `views/storefront/component/product/card/action.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/card/badges.html.twig` |
| `[?]`  | Base+A | `views/storefront/component/product/card/box-standard.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/card/price-unit.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/card/wishlist.html.twig` |

### Storefront – component/product/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/component/product/description.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/downloads.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/listing.html.twig` |
| `[ ]`  | A | `views/storefront/component/product/properties.html.twig` |

### Storefront – element/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | A | `views/storefront/element/cms-element-category-navigation.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-cross-selling.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-image-gallery.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-image.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-product-description-reviews.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-product-slider.html.twig` |
| `[ ]`  | A | `views/storefront/element/cms-element-sidebar-filter.html.twig` |

### Storefront – layout/breadcrumb
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | A | `views/storefront/layout/breadcrumb.html.twig` |

### Storefront – layout/footer/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/layout/footer/footer-logo.html.twig` |
| `[ ]`  | A | `views/storefront/layout/footer/footer-minimal.html.twig` |
| `[B]`  | Base | `views/storefront/layout/footer/footer.html.twig` |

### Storefront – layout/header/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[B]`  | Base | `views/storefront/layout/header/account-menu.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/account-widget.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/cart-widget.html.twig` |
| `[ ]`  | A | `views/storefront/layout/header/actions/currency-widget.html.twig` |
| `[ ]`  | A | `views/storefront/layout/header/actions/language-widget.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/wishlist-widget.html.twig` |
| `[ ]`  | A | `views/storefront/layout/header/header-minimal.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/header.html.twig` |
| `[ ]`  | A | `views/storefront/layout/header/logo.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/search.html.twig` |
| `[?]`  | A | `views/storefront/layout/header/top-bar.html.twig` |

### Storefront – layout/meta
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/layout/meta.html.twig` |

### Storefront – layout/navigation/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/layout/navigation/navigation-item.html.twig` |
| `[ ]`  | A | `views/storefront/layout/navigation/navigation.html.twig` |
| `[ ]`  | A | `views/storefront/layout/navigation/offcanvas/active-item-link.html.twig` |
| `[ ]`  | A | `views/storefront/layout/navigation/offcanvas/back-link.html.twig` |
| `[ ]`  | A | `views/storefront/layout/navigation/offcanvas/general-headline.html.twig` |
| `[ ]`  | A | `views/storefront/layout/navigation/offcanvas/show-all-link.html.twig` |

### Storefront – layout/sidebar/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | A | `views/storefront/layout/sidebar/category-navigation.html.twig` |

### Storefront – page/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | A | `views/storefront/page/_page.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/order-history/order-detail-document.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/order-history/order-detail-list.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/order-history/order-item.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/order/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/register/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/account/sidebar.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/_page.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/address/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/cart/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/confirm/confirm-address.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/confirm/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/finish/finish-details-bottom.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/finish/finish-details.html.twig` |
| `[ ]`  | A | `views/storefront/page/checkout/finish/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/content/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/description.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/downloads.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/headline.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/manufacturer.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/meta.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/properties.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/review/review-form.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/review/review-item.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/review/review-login.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/review/review-widget.html.twig` |
| `[ ]`  | A | `views/storefront/page/product-detail/review/review.html.twig` |
| `[ ]`  | A | `views/storefront/page/search/index.html.twig` |
| `[ ]`  | A | `views/storefront/page/search/search-pagelet.html.twig` |
| `[ ]`  | A | `views/storefront/page/wishlist/index.html.twig` |

### Storefront – utilities/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | A | `views/storefront/svg.html.twig` |
| `[B]`  | Base | `views/storefront/utilities/offcanvas.html.twig` |
| `[ ]`  | A | `views/storefront/utilities/thumbnail.html.twig` |

---

## REITSPORT (BelVG_Reitsport_original)

### Administration
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `app/administration/sw-cms/blocks/commerce/product-four-column/component/sw-cms-block-product-four-column.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/commerce/product-four-column/preview/sw-cms-preview-product-four-column.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/category-grid/component/sw-cms-block-category-grid.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/category-grid/preview/sw-cms-preview-category-grid.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/review-slider/component/sw-cms-block-review-slider.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/review-slider/preview/sw-cms-preview-review-slider.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/slider-with-caption/component/sw-cms-block-slider-with-caption.html.twig` |
| `[ ]`  | R | `app/administration/sw-cms/blocks/text-image/slider-with-caption/preview/sw-cms-preview-slider-with-caption.html.twig` |

### Storefront – base.html.twig
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[B]`  | Base | `views/storefront/base.html.twig` |

### Storefront – belvg/ (BelVG-spezifisch)
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[-]`  | — | `views/storefront/belvg/showpasswordjs.html.twig` |
| `[-]`  | — | `views/storefront/belvg/social-icons.html.twig` |
| `[-]`  | — | `views/storefront/belvg/usp-footer.html.twig` |

### Storefront – block/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/block/cms-block-category-grid.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-gallery-buybox.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-product-four-column.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-product-heading.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-product-slider.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-review-slider.html.twig` |
| `[ ]`  | R | `views/storefront/block/cms-block-slider-with-caption.html.twig` |

### Storefront – component/account/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/account/login.html.twig` |
| `[ ]`  | R | `views/storefront/component/account/register.html.twig` |

### Storefront – component/address/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/address/address-editor-modal-create-address.html.twig` |
| `[ ]`  | R | `views/storefront/component/address/address-editor-modal-list.html.twig` |
| `[ ]`  | R | `views/storefront/component/address/address-editor-modal.html.twig` |
| `[ ]`  | R | `views/storefront/component/address/address-form.html.twig` |
| `[ ]`  | R | `views/storefront/component/address/address-personal.html.twig` |

### Storefront – component/buy-widget/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/buy-widget/buy-widget-form.html.twig` |
| `[ ]`  | R | `views/storefront/component/buy-widget/buy-widget-price-table.html.twig` |
| `[ ]`  | R | `views/storefront/component/buy-widget/buy-widget-price.html.twig` |
| `[ ]`  | R | `views/storefront/component/buy-widget/buy-widget.html.twig` |
| `[ ]`  | R | `views/storefront/component/buy-widget/configurator.html.twig` |
| `[ ]`  | R | `views/storefront/component/buy-widget/configurator/select.html.twig` |

### Storefront – component/captcha/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/captcha/LaenenCloudflareTurnstile.html.twig` |

### Storefront – component/checkout/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/checkout/cart-header.html.twig` |
| `[ ]`  | R | `views/storefront/component/checkout/offcanvas-cart-summary.html.twig` |
| `[ ]`  | R | `views/storefront/component/checkout/offcanvas-cart.html.twig` |

### Storefront – component/delivery-information
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/delivery-information.html.twig` |

### Storefront – component/line-item/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/line-item/element/label.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/element/quantity.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/element/remove.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/element/variant-characteristics.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/type/discount.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/type/product-checkout.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/type/product-minicart.html.twig` |
| `[ ]`  | R | `views/storefront/component/line-item/type/product.html.twig` |

### Storefront – component/listing/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/listing/filter-panel.html.twig` |

### Storefront – component/pagination
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/pagination.html.twig` |

### Storefront – component/product/card/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/product/card/action-wishlist.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/action.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/badges.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/box-product-block.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/box-standard.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/box-wishlist.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/price-unit.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/card/wishlist.html.twig` |

### Storefront – component/product/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/product/description.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/downloads.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/listing.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/manufacturer-tab.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/properties.html.twig` |
| `[ ]`  | R | `views/storefront/component/product/quickview/minimal.html.twig` |

### Storefront – component/review/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/review/rating.html.twig` |
| `[ ]`  | R | `views/storefront/component/review/review-login.html.twig` |
| `[ ]`  | R | `views/storefront/component/review/review.html.twig` |

### Storefront – component/sorting
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/component/sorting.html.twig` |

### Storefront – element/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/element/cms-element-category-listing/category-item.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-category-navigation.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-cross-selling.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-forward.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-info-required.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-input.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-privacy.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-select-salutation.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-submit.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-components/cms-element-form-textarea.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-types/contact-form.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-form/form-types/newsletter-form.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-image-gallery.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-product-box.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-product-description-reviews.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-product-name.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-product-slider.html.twig` |
| `[ ]`  | R | `views/storefront/element/cms-element-sidebar-filter.html.twig` |

### Storefront – layout/footer/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/layout/footer/footer-logo.html.twig` |
| `[B]`  | Base | `views/storefront/layout/footer/footer.html.twig` |

### Storefront – layout/header/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | R | `views/storefront/layout/header/account-menu.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/account-widget.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/cart-widget.html.twig` |
| `[ ]`  | R | `views/storefront/layout/header/actions/currency-widget.html.twig` |
| `[ ]`  | R | `views/storefront/layout/header/actions/language-widget.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/actions/wishlist-widget.html.twig` |
| `[ ]`  | R | `views/storefront/layout/header/header-minimal.html.twig` |
| `[?]`  | R | `views/storefront/layout/header/header.html.twig` |
| `[ ]`  | R | `views/storefront/layout/header/logo.html.twig` |
| `[ ]`  | R | `views/storefront/layout/header/search-suggest.html.twig` |
| `[B]`  | Base | `views/storefront/layout/header/search.html.twig` |
| `[?]`  | R | `views/storefront/layout/header/top-bar.html.twig` |

### Storefront – layout/meta
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/layout/meta.html.twig` |

### Storefront – layout/navigation/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/layout/navigation/navigation-item.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/navigation.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/active-item-link.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/back-link.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/categories.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/general-headline.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/item-link.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/navigation.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/show-active-link.html.twig` |
| `[ ]`  | R | `views/storefront/layout/navigation/offcanvas/show-all-link.html.twig` |

### Storefront – layout/sidebar/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/layout/sidebar/category-navigation.html.twig` |

### Storefront – layout/breadcrumb
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | R | `views/storefront/layout/breadcrumb.html.twig` |

### Storefront – page/account/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/page/account/addressbook/address-actions.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/addressbook/create.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/addressbook/edit.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/addressbook/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/order-history/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/order-history/order-item.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/order/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/payment/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/profile/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/profile/recover-password.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/register/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/account/sidebar.html.twig` |

### Storefront – page/checkout/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/page/checkout/_page.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/address/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/cart/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/confirm/confirm-address.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/confirm/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/finish/finish-details-bottom.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/finish/finish-details.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/finish/index.html.twig` |
| `[ ]`  | R | `views/storefront/page/checkout/include-tpl.html.twig` |

### Storefront – page/product-detail/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/page/product-detail/configurator.html.twig` |
| `[ ]`  | R | `views/storefront/page/product-detail/headline.html.twig` |
| `[ ]`  | R | `views/storefront/page/product-detail/review/review-login.html.twig` |
| `[ ]`  | R | `views/storefront/page/product-detail/sticky-details.html.twig` |

### Storefront – page/search/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/page/search/index.html.twig` |

### Storefront – page/wishlist/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[ ]`  | R | `views/storefront/page/wishlist/wishlist-pagelet.html.twig` |

### Storefront – utilities/
| Status | Zuständigkeit | Template |
|--------|---------------|----------|
| `[?]`  | R | `views/storefront/svg.html.twig` |
| `[?]`  | R | `views/storefront/utilities/offcanvas.html.twig` |
| `[ ]`  | R | `views/storefront/utilities/thumbnail.html.twig` |
