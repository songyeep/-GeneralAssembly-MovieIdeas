# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#leaderboard').dataTable({"order": [[ 0, "desc" ]] })
  console.log("Datatable");
  # // # $('.datatable').dataTable({
  # // #   # ajax: ...,
  # // #   # autoWidth: false,
  # // #   # pagingType: 'full_numbers',
  # // #   # processing: true,
  # // #   # serverSide: true,

  # // #   # Optional, if you want full pagination controls.
  # // #   # Check dataTables documentation to learn more about available options.
  # // #   # http://datatables.net/reference/option/pagingType
  # })