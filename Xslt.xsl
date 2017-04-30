<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>

   
    <xsl:template match="/settings">
        [
        <xsl:for-each select="device"> 
            {
            "Sounds":{
            "Volume": "<xsl:value-of select="sounds/volume"/>",
            "Ringtone": "<xsl:value-of select="sounds/ringtone"/>",
            "Message": "<xsl:value-of select="sounds/message"/>",
            "Alarm": "<xsl:value-of select="sounds/alarm"/>",
            "Vibrate": "<xsl:value-of select="sounds/vibrate"/>"}
            },
            {
            "Display":{
            "Brightness": "<xsl:value-of select="display/brightness"/>",
            "Wallpaper": "<xsl:value-of select="display/wallpaper"/>",
            "Theme": "<xsl:value-of select="display/theme"/>",
            "Font": "<xsl:value-of select="display/font"/>",
            "Screensaver": "<xsl:value-of select="display/screensaver"/>"}
            },
            {
            "Memory SD":{
            "Total": "<xsl:value-of select="memory/sd/total"/>",
            "Available": "<xsl:value-of select="memory/sd/available"/>",
            "Used": "<xsl:value-of select="memory/sd/used"/>"}
            },
            {
            "Memory Internal":{
            "Total": "<xsl:value-of select="memory/internal/total"/>",
            "Available": "<xsl:value-of select="memory/internal/available"/>",
            "Used": "<xsl:value-of select="memory/internal/used"/>"}
            },
        </xsl:for-each>
        
        <xsl:for-each select="personal">
            {
            "Personal":{
            "Apps":[<xsl:for-each select="apps">
                {"ID app": "<xsl:value-of select="@ida"/>",
                "Title": "<xsl:value-of select="title"/>",
                "Size": "<xsl:value-of select="size"/>",
                "Location": "<xsl:value-of select="location"/>",
                "Installed on": "<xsl:value-of select="installedon"/>"
                }<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>]}},
            {
            "Users":[<xsl:for-each select="users">
                {"ID user": "<xsl:value-of select="@idu"/>",
                "Account": "<xsl:value-of select="account"/>",
                "Name": "<xsl:value-of select="name"/>",
                "Last log": "<xsl:value-of select="lastlog"/>"
                }<xsl:if test="position() != last()">,</xsl:if>
            </xsl:for-each>]},
            {
            "Privacy":{
            "Active sim password":"<xsl:value-of select="privacy/simpassword/@activesim"/>",
            "Sim password": "<xsl:value-of select="privacy/simpassword"/>",
            "Active lockscreen password": "<xsl:value-of select="privacy/lockscreen/@activelock"/>",
            "Lockscreen": "<xsl:value-of select="privacy/lockscreen"/>"
            }},                
            
        </xsl:for-each>
            
        <xsl:for-each select="system">
            {
            "Date":"<xsl:value-of select="date/@dt"/>",
            "Form": "<xsl:value-of select="date/formd"/>"
            },
            {
            "Time":"<xsl:value-of select="time/@tm"/>",
            "Form": "<xsl:value-of select="time/formt"/>"
            },
            
            {
            "Language":{
            "Phone": "<xsl:value-of select="language/phone"/>",
            "Keyboard": "<xsl:value-of select="language/keyboard"/>"}
            },
          
           
            { 
            "About":{
            "Brand": "<xsl:value-of select="about/brand"/>",
            "Model": "<xsl:value-of select="about/brand/@model"/>",
            "CPU": "<xsl:value-of select="about/brand/@cpu"/>",
            "GPU": "<xsl:value-of select="about/brand/@gpu"/>",
            "RAM": "<xsl:value-of select="about/brand/@ram"/>",            
            "Operating system": "<xsl:value-of select="about/osversion"/>",
            
            "Status":{
            "Battery": "<xsl:value-of select="about/status/battery"/>",
            "Mobile number": "<xsl:value-of select="about/status/mnumber"/>",
            "Screensize": "<xsl:value-of select="about/status/screensize"/>",
            "Network": "<xsl:value-of select="about/status/network"/>",
            "IMEI number": "<xsl:value-of select="about/status/imei"/>"}
            
            }
            }
                
        </xsl:for-each>
            
        
            
            
           
            
        
        
        
        ]
    </xsl:template>

</xsl:stylesheet>
