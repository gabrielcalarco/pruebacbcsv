<?xml version="1.0" encoding="UTF-8"?>
            <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xpath-default-namespace="http://www.tei-c.org/ns/1.0"
                exclude-result-prefixes="xs"
                version="2.0"
                xmlns="http://www.w3.org/1999/xhtml">
                
                <xsl:template match="/">
                    <xsl:variable name="doc_id" select="//title/@xml:id"/> 
                    <!-- Recuperamos el id del documento en una variable para nombrar el archivo de salida -->
                    <!-- Redirigir el resultado hacia un archivo -->        
                    <xsl:result-document method="html" encoding="utf-8"
                        href="objects/transcripciones/{$doc_id}.html" omit-xml-declaration="yes">---
        layout: default
        title: <xsl:apply-templates select="$doc_id"/>
       ---
       
        <h1><xsl:apply-templates select="//title[1]"/></h1>


        <div>
<h2 class="mb-3"><xsl:apply-templates select="//head[1]"/></h2>
<h2 class="mb-3"><xsl:apply-templates select="//head[2]"/></h2>

<xsl:apply-templates select="//div/p"/>

        </div>  


        </xsl:result-document>
        <!-- Redirigir el resultado hacia un archivo -->
    </xsl:template>


    <!-- Transformaciones -->




    <xsl:template match="//note">
        <p class="nota">
            <xsl:apply-templates/>
        </p>
    </xsl:template>   

<xsl:template match="//p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>


    <xsl:template match="//orgName">
        <span> 
            <xsl:attribute name="style">font-weight: bold;</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>   
 

    <xsl:template match="//placeName">
        <span> 
            <xsl:attribute name="style">font-weight: bold;</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>   
    
    
    <xsl:template match="//persName">
        <span> 
            <xsl:attribute name="style">font-weight: bold;</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>   
    
    <xsl:template match="//corr">
        <span> 
            <xsl:attribute name="style">font-style: italic;</xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>

<xsl:template match="//lb">
        <br/>
    </xsl:template>   

    

</xsl:stylesheet>