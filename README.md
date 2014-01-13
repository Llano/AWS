AWS - Arma Weather Synchronize
===

This extension let you synchronize the weather in Arma with the realworld weather. Default the extension will retrieve the current weather at the island "Stratis", aka "Agios Efstratios".

<h3>Note: This extension requires that you have Arma2NET installed.</h3>
Extract the AWS-folder into <code>Arma2Net/Addins/</code> and include <code>@Arma2NET</code> as a mod.

<h3>Retrieve weather information</h3>
To retieve the current weather information from (default) Stratis, you use this code: 
<code>_CurrentWeatherInformation = "Arma2Net.Unmanaged" callExtension "AWS";</code>

<code>_CurrentWeatherInformation</code> is a array containing multiple values:
<code>["0.83", "91", "Mostly Cloudy", [2014, 1, 13, 14, 57]]</code>
In the order -> <code>Windspeed</code>,<code>windbearing</code>,<code>Condition</code>, and last a array containing the current date in the format <code>Year</code>,<code>Month</code>,<code>Date</code>,<code>Hour</code>,<code>Minute</code>

So, to retieve what condition the current weather is, you execute:
<code>_weatherCondition = _CurrentWeatherInformation select 2;</code>

If you wish to set synchronize the date, you execute:
<code>_date = _CurrentWeatherInformation select 3; setDate _date;</code>
