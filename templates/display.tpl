{**
 * plugins/generic/htmlMonographFile/templates/display.tpl
 *
 * Copyright (c) 2014-2021 Simon Fraser University
 * Copyright (c) 2003-2021 John Willinsky
 * Distributed under the GNU GPL v3. For full terms see the file docs/COPYING.
 *
 * Embedded viewing of a HTML galley.
 *}
<!DOCTYPE html>
<html lang="{$currentLocale|replace:"_":"-"}" xml:lang="{$currentLocale|replace:"_":"-"}">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>{$currentContext->getLocalizedName($currentLocale)}</title>

	{load_header context="frontend" headers=$headers}
	{load_stylesheet context="frontend" stylesheets=$stylesheets}
	{load_script context="frontend" scripts=$scripts}
</head>
<body class="pkp_page_{$requestedPage|escape} pkp_op_{$requestedOp|escape}">
	<div id="htmlContainer" class="viewable_file_frame{if !$isLatestPublication} viewable_file_frame_with_notice{/if}">
		{if !$isLatestPublication}
			<div class="viewable_file_frame_notice">
				<div class="viewable_file_frame_notice_message" role="alert">
					{translate key="submission.outdatedVersion" datePublished=$filePublication->getData('datePublished') urlRecentVersion=$submissionUrl}
				</div>
			</div>
		{/if}
		<iframe name="htmlFrame" src="{$downloadUrl}" title="{translate key="submission.representationOfTitle" representation=$publicationFormat->getLocalizedName() title=$filePublication->getLocalizedFullTitle()|escape}" allowfullscreen webkitallowfullscreen></iframe>
	</div>
	{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>
