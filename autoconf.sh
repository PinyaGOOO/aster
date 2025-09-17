#!/bin/bash
echo 'Name file?'
read namefile
filename="${namefile}.cnf.xml"
ITL="ITL${namefile}.tlv"
CTL="CTL${namefile}.tlv"
echo 'number phone?'
read phonenumber



echo "<?xml version="1.0" encoding="UTF-8"?>
<device>
	<versionStamp>{7821 Aug 28 2015 12:40:48}</versionStamp>
	<devicePool>
		<dateTimeSetting>
			<dateTemplate>D.M.YYYY</dateTemplate>
   			<timeTemplate>HH:MM</timeTemplate>
   			<timeZone>Tajikistan Standard Time</timeZone>
 	<ntps>
	<ntp>
	<name>ntp.tsu.ru</name>
	<ntpMode>Unicast</ntpMode>
	</ntp>
	</ntps>
		</dateTimeSetting>
		<callManagerGroup>
			<members>
				<member priority="0">
					<callManager>
						<ports>
							<ethernetPhonePort>2000</ethernetPhonePort>
						</ports>
						<processNodeName>10.1.10.23</processNodeName>
					</callManager>
				</member>
			</members>
		</callManagerGroup>
	</devicePool>
	<commonProfile>
		<callLogBlfEnabled>3</callLogBlfEnabled>
	</commonProfile>
	<loadInformation>sip78xx.14-2-1-0101-26</loadInformation>
	<userLocale>
		<name>Russian_Russia</name>
		<uid/>
		<langCode>ru_RU</langCode>
		<version/>
		<winCharSet>utf-8</winCharSet>
	</userLocale>
	<networkLocale>Russian_Russia</networkLocale>
	<networkLocaleInfo>
		<name>Russian_Russia</name>
	</networkLocaleInfo>
	<idleTimeout>0</idleTimeout>
	<authenticationURL/>
	<directoryURL/>
	<idleURL/>
	<informationURL/>
	<messagesURL/>
	<proxyServerURL/>
	<servicesURL/>
	<capfAuthMode>0</capfAuthMode>
	<capfList>
		<capf>
			<phonePort>5060</phonePort>
			<processNodeName/>
		</capf>
	</capfList>
	<deviceSecurityMode>1</deviceSecurityMode>
	<sipProfile>
		<sipCallFeatures>
			<cnfJoinEnabled>true</cnfJoinEnabled>
			<callForwardURI>x--serviceuri-cfwdall</callForwardURI>
			<callPickupURI>x-cisco-serviceuri-pickup</callPickupURI>
			<callPickupListURI>x-cisco-serviceuri-opickup</callPickupListURI>
			<callPickupGroupURI>x-cisco-serviceuri-gpickup</callPickupGroupURI>
			<meetMeServiceURI>x-cisco-serviceuri-meetme</meetMeServiceURI>
			<abbreviatedDialURI>x-cisco-serviceuri-abbrdial</abbreviatedDialURI>
			<rfc2543Hold>true</rfc2543Hold>
			<callHoldRingback>2</callHoldRingback>
			<localCfwdEnable>true</localCfwdEnable>
			<semiAttendedTransfer>true</semiAttendedTransfer>
			<anonymousCallBlock>2</anonymousCallBlock>
			<callerIdBlocking>0</callerIdBlocking>
			<dndControl>0</dndControl>
			<remoteCcEnable>true</remoteCcEnable>
		</sipCallFeatures>
		<sipStack>
			<sipInviteRetx>6</sipInviteRetx>
			<sipRetx>10</sipRetx>
			<timerInviteExpires>180</timerInviteExpires>
			<timerRegisterExpires>120</timerRegisterExpires>
			<timerRegisterDelta>5</timerRegisterDelta>
			<timerKeepAliveExpires>120</timerKeepAliveExpires>
			<timerSubscribeExpires>120</timerSubscribeExpires>
			<timerSubscribeDelta>5</timerSubscribeDelta>
			<timerT1>500</timerT1>
			<timerT2>4000</timerT2>
			<maxRedirects>70</maxRedirects>
			<remotePartyID>false</remotePartyID>
			<userInfo>None</userInfo>
		</sipStack>
		<autoAnswerTimer>1</autoAnswerTimer>
		<autoAnswerAltBehavior>false</autoAnswerAltBehavior>
		<autoAnswerOverride>true</autoAnswerOverride>
		<transferOnhookEnabled>true</transferOnhookEnabled>
		<enableVad>false</enableVad>
		<preferredCodec>g711alaw</preferredCodec>
		<dtmfAvtPayload>101</dtmfAvtPayload>
		<dtmfDbLevel>3</dtmfDbLevel>
		<dtmfOutofBand>avt</dtmfOutofBand>
		<alwaysUsePrimeLine>false</alwaysUsePrimeLine>
		<alwaysUsePrimeLineVoiceMail>false</alwaysUsePrimeLineVoiceMail>
		<kpml>3</kpml>
		<stutterMsgWaiting>1</stutterMsgWaiting>
		<callStats>false</callStats>
		<silentPeriodBetweenCallWaitingBursts>10</silentPeriodBetweenCallWaitingBursts>
		<disableLocalSpeedDialConfig>false</disableLocalSpeedDialConfig>
		<startMediaPort>10000</startMediaPort>
		<stopMediaPort>20000</stopMediaPort>
		<voipControlPort>5061</voipControlPort>
		<dscpForAudio>184</dscpForAudio>
		<ringSettingBusyStationPolicy>0</ringSettingBusyStationPolicy>
		<dialTemplate>dialplan.xml</dialTemplate>
		<phoneLabel>$phonenumber</phoneLabel>
		<sipLines>
			<line button="1">
				<featureID>9</featureID>
				<featureLabel>$phonenumber</featureLabel>
				<name>$phonenumber</name>
				<displayName>$phonenumber</displayName>
				<contact>$phonenumber</contact>
				<proxy>10.1.10.23</proxy>
				<port>5060</port>
				<autoAnswer>
					<autoAnswerEnabled>2</autoAnswerEnabled>
				</autoAnswer>
				<callWaiting>3</callWaiting>
				<authName>$phonenumber</authName>
				<authPassword>e5b6ed54180950d0522f69d159a8ebfe</authPassword>
				<sharedLine>false</sharedLine>
				<messageWaitingLampPolicy>1</messageWaitingLampPolicy>
				<messagesNumber>121</messagesNumber>
				<ringSettingIdle>4</ringSettingIdle>
				<ringSettingActive>5</ringSettingActive>
				<forwardCallInfoDisplay>
					<callerName>true</callerName>
					<callerNumber>false</callerNumber>
					<redirectedNumber>false</redirectedNumber>
					<dialedNumber>true</dialedNumber>
				</forwardCallInfoDisplay>
			</line>
		</sipLines>
	</sipProfile>
</device>" > $filename
echo "" > $CTL
echo "" > $ITL
chmod +x $ITL
chmod +x $CTL
chmod +x $filename
sudo systemctl restart xinetd
sudo systemctl restart tftp
