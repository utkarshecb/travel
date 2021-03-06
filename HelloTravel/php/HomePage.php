<?php
// Load XML file
$xml = new DOMDocument;
$xml->load('../pages/HomePage.xml');

// Load XSL file
$xsl = new DOMDocument;
$xsl->load('../xsl/PageRenderer.xsl');

// Configure the transformer
$proc = new XSLTProcessor;

// Attach the xsl rules
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);
?>