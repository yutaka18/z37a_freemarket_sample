$(function () {
	$('#destination_post_number').jpostal({
		postcode : [
			'#destination_post_number'
		],
		address : {
			'#destination_prefecture'  : '%3',
			'#destination_city'  : '%4%5'
		}
	});
});