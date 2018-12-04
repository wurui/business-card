<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.business-card">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-business-card" ox-mod="business-card">
            <xsl:variable name="person" select="data/user-bizcard/i[1]"/>
            <xsl:variable name="company" select="data/info-company/i[1]"/>

            <div class="title">
                <img src="{$person/avatar}" class="avatar"/>

                <h3 class="name"><xsl:value-of select="$person/name"/></h3>
                <p class="position">
                    <xsl:value-of select="$person/title"/>
                </p>
                <p class="section">
                    <xsl:value-of select="$person/department"/>
                </p>
            </div>
            <div class="contact">
                <p class="phone">
                    <label>手机</label><a href="tel:{$person/phone}">
                    <xsl:value-of select="$person/phone"/>
                </a>
                </p>
                <p class="email">
                    <label>邮箱</label><a href="mailto:{$person/email}">
                    <xsl:value-of select="$person/email"/>
                </a>
                </p>
            </div>

            <p class="introduce">
                <xsl:value-of select="$person/introduce"/>
            </p>
            <div class="company">

                <img src="//a.oxm1.cc/img/blank.png" style="background-image:url({$company/logo})" class="logo"/>
                <p>
                    <xsl:value-of select="$company/name"/>
                </p>
                <p>
                    <a href="{$company/website}"><xsl:value-of select="$company/website"/></a>
                </p>
                <p>
                    <xsl:value-of select="$company/slogan"/>
                </p>
            </div>

        </div>
    </xsl:template>
</xsl:stylesheet>
