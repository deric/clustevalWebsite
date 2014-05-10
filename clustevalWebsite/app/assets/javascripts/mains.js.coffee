# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#statistics').dataTable
		sPaginationType: "full_numbers"
		bJQueryUI: true
		bRetrieve: true
		bDestroy: true

ellipsis = (text, n) ->
  if text.length > n
    text.substring(0, n) + "..."
  else
    text

jQuery ->
	MyDatatable('#dataAndProgramStatistics');
	bla = $('#dataAndProgramStatistics').dataTable(
		aoColumnDefs:	[
			{
				aTargets: [ 1 ]
				bVisible: false
			}
		]
		sPaginationType: "full_numbers"
		bJQueryUI: true
		bRetrieve: true
		bDestroy: true
		bPaginate: false
		bInfo: false
		bFilter: false
		bAutoWidth: false
		sDom: 'C<"clear">T<"clear"><"H"Rlfr>t<"F"ip>'
		oTableTools:
			sSwfPath: "/assets/dataTables/copy_csv_xls.swf"
			aButtons: ['copy', 'csv']
		oColVis:
			aiInclude: [ 1 ])

jQuery ->
	$('.clustEvalContentInner :checkbox').each ->
  		$(this).button()
