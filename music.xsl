<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Melody Hub</title>
                <style>
                    body { font-family: 'Quicksand', sans-serif; background-color: #f9f9f9; color: #555; }
                    h1 { color: #ff7f50; text-align: center; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 15px; border: 1px solid #ddd; border-radius: 8px; background-color: #fafafa; }
                    .songTitle { font-weight: bold; color: #ff7f50; }
                    .artist { color: #6a5acd; }
                    .albums { color: #32cd32; }
                    .debutYear { color: #ff69b4; }
                </style>
            </head>
            <body>
                <h1>Melody Hub</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>