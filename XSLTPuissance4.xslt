<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
	
    <xsl:template match="/puissance4">
        <svg xmlns="http://www.w3.org/2000/svg" width="800" height="800" > 

            <!-- dessin des pions et de leur contours-->
            <xsl:for-each select="ligne">
                <xsl:variable name="posLigne" select="position()" />
                <xsl:for-each select="case">
                    <rect x="{@position*114-114}" y="{$posLigne*133-133}" width="114" height="133" style="fill:blue" />
                    <circle cx="{@position*114-57}" cy="{$posLigne*133-71}" r="57" fill="{@color}"/>
                </xsl:for-each>
            </xsl:for-each>

            <!--dessin de la grille-->
            <xsl:for-each select="ligne">
                <line x1="0" y1="{@position*133}" x2="800" y2="{@position*133}" style="stroke:black;stroke-width:2"/>
            </xsl:for-each>
            <xsl:for-each select="ligne/case">
                <line x1="{@position*114}" y1="0" x2="{@position*114}" y2="800" style="stroke:black;stroke-width:2"/>
            </xsl:for-each>
        </svg>
    </xsl:template>
</xsl:stylesheet>