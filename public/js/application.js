$(document).ready(function() {
    $(document).on('click', '#submit', function(event) {
        $('#animation_roll').show();
        event.preventDefault();
        var url = '/dies';
        var value = $('input:radio[name=die]:checked').val();
        var data = {
            die: value
        };
        console.log(data);
        $.post(url, data, function(server_response) {
            console.log(server_response);
            $('#result').text(server_response.roll);
            $('#animation_roll').hide();
        });
    });
});