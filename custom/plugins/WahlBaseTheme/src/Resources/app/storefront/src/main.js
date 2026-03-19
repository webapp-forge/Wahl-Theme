import DropdownSorting from './js/plugins/dropdown-sorting.plugin';

const PluginManager = window.PluginManager;
PluginManager.register('DropdownSorting', DropdownSorting, '[data-dropdown-sorting]');
