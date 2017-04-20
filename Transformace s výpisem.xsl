<?xml version="1.0" encoding="UTF-8"?>
<!--
    Document   : transformace.xsl
    Created on : 16 April 2017, 15:04
    Author     : Michael
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/profily_programu_zbrush">
        [
        <xsl:for-each select="profil">          
            <xsl:sort select="@id" order="descending"/>
            {
            "ID": "<xsl:value-of select="@id"/>",
            "Název": "<xsl:value-of select="zakladni/jmeno_profilu"/>",
            "Jazyk": "<xsl:value-of select="zakladni/jazyk"/>",
            "Menu": "<xsl:value-of select="zakladni/menu"/>",
            "Tvůrce": "<xsl:value-of select="zakladni/tvurce"/>",       
            "Ukládání projektu": "<xsl:value-of select="zakladni/ukladani_projektu"/>",      
            "Datum vytvoření profilu": "<xsl:value-of select="zakladni/vytvoreni_profilu/datum"/>",
            "Výchozí tvar modelu": "<xsl:value-of select="nastaveni_modelu/tvar/vychozi_tvar"/>",
            "Polygonální rozlišení": "<xsl:value-of select="nastaveni_modelu/tvar/polygonalni_rozliseni"/>",
            "Barva modelu": "<xsl:value-of select="nastaveni_modelu/textura/barva"/>",
            "Pozadí": "<xsl:value-of select="scena/pozadi"/>",
            "Podlaha": "<xsl:value-of select="scena/podlaha"/>",
            "Renderovací systém": "<xsl:value-of select="render/rendrovaci_system"/>",
            "Typ výstupního souboru": "<xsl:value-of select="render/výstup/soubor/typ"/>",
            "Globální iluminace - primární metoda": "<xsl:value-of select="render/globalni_iluminace/primarni_metoda"/>",
            "Globální iluminace - sekundární metoda": "<xsl:value-of select="render/globalni_iluminace/sekundarni_metoda"/>",
            "Ambient occlusion": "<xsl:value-of select="render/ambient_occlusion/pouzit"/>"                                               
            } 
            <xsl:if test="position() != last()">,</xsl:if>
        </xsl:for-each>  
        ]     
    </xsl:template>
</xsl:stylesheet>
