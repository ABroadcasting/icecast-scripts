<!--By MechanisM (http://radiotalk.ru/viewtopic.php?id=3264) -->
<head>
<script src="https://www.google.com/jsapi"></script>
<script>google.load('visualization', '1', {packages: ['gauge']});
function drawVisualization() {
var data = new google.visualization.DataTable();
data.addColumn('string', 'Label');
data.addColumn('number', 'Value');
data.addRows([
['TOTAL', <xsl:value-of select="listeners" />],<xsl:for-each select="source">  
['<xsl:value-of select="@mount" />', <xsl:value-of select="listeners" />]<xsl:if test="position() != last()"><xsl:text>,</xsl:text></xsl:if></xsl:for-each>
]);
var gaugeOptions = {min: 0, max: 300, greenFrom: 0, greenTo: 200, yellowFrom: 200, yellowTo: 280, redFrom: 280, redTo: 300, minorTicks: 5};
new google.visualization.Gauge(document.getElementById('visualization')).
draw(data, gaugeOptions);
}
google.setOnLoadCallback(drawVisualization);</script>
</head>
<body>
<div id="visualization" style="width:600px; height:200px;"></div>
</body>