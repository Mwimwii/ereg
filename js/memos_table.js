$(document).ready(function() {
    let oTable = $("#example").DataTable({
      paging: false,
      bFilter: false,
      ordering: false,
      searching: true,
      dom: 't',         // This shows just the table
      aaSorting: [],
      responsive: true,
  
      columnDefs: [
        {
          responsivePriority: 1,
          targets: 0
        },
        {
          className: "none",
          targets: -3
        },
        {
          className: "none",
          targets: -2
        },
        {
          responsivePriority: 2,
          targets: -1
        }
      ]
    });
  
      $('#searchField').keyup(function(){
        oTable.search($(this).val()).draw() ;
      })

    $('[data-toggle="tooltip"]').tooltip();
  });
  