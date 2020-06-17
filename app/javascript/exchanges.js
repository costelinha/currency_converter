document.addEventListener('turbolinks:load', function() {
  document.getElementById('exchange_form').addEventListener('ajax:success', function(event) {
    let[result] = event.detail
    document.getElementById('result').value = result.value
  })
})

/*  Inversion logic(pedding)

document.addEventListener('turbolinks:load', function () {
  document.getElementById('exchange_form').addEventListener('ajax:success', function (event) {
    a = document.getElementById('source_currency').value
    document.getElementById('source_currency').value = document.getElementById('target_currency').value
    document.getElementById('target_currency').value = a
  })
})

*/