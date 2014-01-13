_run = 1;

while{_run == 1} do
{
	_weather = "Arma2Net.Unmanaged" callExtension "AWS";
	_weather = call compile _weather;
	_typeOf = _weather select 2;
	_windSpeed = _weather select 0;
	_windAng = _weather select 1;
	_date = _weather select 3;
	setDate _date;
	_duration = 20;
	_duration setWindDir (call compile _windAng);
	skipTime -24;
	switch (_typeOf) do
	{
		case "Drizzle": 
		{
		
			_duration setOvercast 0.7;
			_duration setRain 0.08;
		};
		
		case "Mostly Cloudy":
		{
			_duration setOvercast 0.4;
			_duration setRain 0;
		};
		
		case "Light Rain":
		{
			_duration setOvercast 0.8;
			_duration setRain 0.2;
		};
		
	};
	
	skipTime 24;
	sleep 600;
};