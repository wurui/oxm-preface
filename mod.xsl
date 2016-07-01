<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="oxm-preface">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-oxm-preface" ox-mod="oxm-preface">
        <button type="button" class="J_btnX btn-x">Close</button>

        <xsl:if test="count(data/banner/i) &gt; 0">
            <!--
            倒不建议用variable
            考虑合并的问题，多个模板中variable name相同是否会冲突，导致报错？
            -->
            <xsl:variable name="first" select="data/banner/i[position()=1]" />

            <a href="{$first/href}"><img src="{$first/img}" /></a>
        </xsl:if>
      </div>
    </xsl:template>

</xsl:stylesheet>
