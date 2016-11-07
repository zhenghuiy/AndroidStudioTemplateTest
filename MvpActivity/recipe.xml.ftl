<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
    	to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <instantiate from="root/src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

    <instantiate from="root/src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentName}.java" />

    <instantiate from="root/src/app_package/Contract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${contractName}.java" />

    <instantiate from="root/src/app_package/Presenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />

	<instantiate from="root/res/fragment.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${contentLayoutName}" />

	<instantiate from="root/res/activity.xml.ftl"
		to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}" />

    <open file="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${fragmentName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${contractName}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${presenterName}.java" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${contentLayoutName}" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}" />
</recipe>
