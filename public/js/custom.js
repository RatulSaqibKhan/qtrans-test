const add_more_button_html = '<div class="form-group col-md-6" id="add-more-language-btn-section">'
  + '<button type="button" class="btn btn-primary form-control"><i class="fa fa-plus"></i>&nbsp;Add More</button>'
  + '</div>';

$(document).on('click', '#add-more-language-btn-section button[type="button"]', function () {
  addMoreLanguageSelection();
});

function addMoreLanguageSelection() {
  let cloneLanguageSelection = $('.single-language-selction-section:first-child').clone();
  $('.language-section #add-more-language-btn-section').remove();
  $('.language-section').append(cloneLanguageSelection);
  $('.language-section').append(add_more_button_html);

}

$(document).on('click', '#reset-btn', function () {
  resetForm();
});

function resetForm() {
  let formFields = [
    'package_type',
    'field_of_text',
    'language_id[]',
    'number_of_words',
    'is_complementary',
    'duration',
    'name',
    'discount',
    'email',
  ];
  formFields.forEach((item, key) => {
    switch (item) {
      case 'package_type':
      case 'field_of_text':
      case 'is_complementary':
        $('[name="' + item + '"][value="1"]').click();
        break;
      default:
        $('[name="' + item + '"]').val('').change();
        break;
    }
  })

}