import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('#dose_ingredient_id').select2(); // Add select2 to element
  $('#dose_ingredient_id').select2().on('select2:open', (event) => {  // Add placeholder to Select2
    $('.select2-search__field').attr('placeholder', 'Type to search...');
  })
};

export { initSelect2 };
