AWS - Arma Weather Synchronize
===

<h3><a href="https://developer.forecast.io/">Powered by Forecast</a></h3>

This extension let you synchronize the weather in Arma with the realworld weather. Default the extension will retrieve the current weather at the island "Stratis", aka "Agios Efstratios".

<h3>Note: This extension requires that you have Arma2NET installed.</h3>
Extract the AWS-folder into <code>Arma2Net/Addins/</code> and include <code>@Arma2NET</code> as a mod.

<h3>Retrieve weather information</h3>
To retieve the current weather information from (default) Stratis, you use this code: 
<code>_CurrentWeatherInformation = "Arma2Net.Unmanaged" callExtension "AWS YourAPIKey,Stratis/Altis";</code>
<br />
You can get your own API-key by registrating on this site https://developer.forecast.io/
<br />Since the extension will return it as a string, you have to compile it first.
<code>_CurrentWeatherInformation = call compile _CurrentWeatherInformation;</code>

<code>_CurrentWeatherInformation</code> is a array containing multiple values:
<code>["4.47", "101", "partly-cloudy-day", [2014, 1, 14, 14, 15], 0, 0,0381, 10,39, 0,7]</code>
In the order -> <code>Windspeed</code>,<code>windbearing</code>,<code>Condition</code>, array containing the current date in the format [<code>Year</code>,<code>Month</code>],<code>Date</code>,<code>Hour</code>,<code>Minute</code>, <code>Visibility</code>,<code>precipIntensity</code>,<code>Temperature</code>,<code>cloudCover</code>

<h4><code>Condition</code></h4> Condition will have any of the following values:
<code>clear-day</code>, <code>clear-night</code>, <code>rain</code>, <code>snow</code>, <code>sleet</code>, <code>wind</code>, <code>fog</code>, <code>cloudy</code>, <code>partly-cloudy-day</code>, <code>partly-cloudy-night</code>

So, to retieve what condition the current weather is, you execute:
<code>_weatherCondition = _CurrentWeatherInformation select 2;</code>

If you wish to set synchronize the date, you execute:
<code>_date = _CurrentWeatherInformation select 3; setDate _date;</code>
