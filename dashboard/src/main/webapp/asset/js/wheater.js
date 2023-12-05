 var apiURI = "http://api.openweathermap.org/data/2.5/weather?q=Gwangju+&appid="+"b72ef990a74aa9a5bd3d72c23af90c8e";
        $.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function (resp) {
                
                var $Icon = "http://openweathermap.org/img/w/"+ (resp.weather[0].icon) + ".png";
                var $weather_description = resp.weather[0].main;
                var $Temp = Math.floor(resp.main.temp - 273.15) + '℃';
                var $humidity = '습도&nbsp;&nbsp;&nbsp;&nbsp;' + resp.main.humidity + ' %';
                var $wind = '바람&nbsp;&nbsp;&nbsp;&nbsp;' + resp.wind.speed + ' m/s';
                var $city = '광주';
                var $cloud = '구름&nbsp;&nbsp;&nbsp;&nbsp;' + resp.clouds.all + "%";
                var $temp_min = '최저 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_min - 273.15) + '℃';
                var $temp_max = '최고 온도&nbsp;&nbsp;&nbsp;&nbsp;' + Math.floor(resp.main.temp_max - 273.15) + '℃';

                $('.weather_description').prepend( $('#img').attr('src',$Icon));
                $('.current_temp').prepend($Temp);
                $('.humidity').prepend($humidity);
                $('.wind').prepend($wind);
                $('.city').append($city);
                $('.cloud').append($cloud);
                $('.temp_min').append($temp_min);
                $('.temp_max').append($temp_max);
                
            }
        })