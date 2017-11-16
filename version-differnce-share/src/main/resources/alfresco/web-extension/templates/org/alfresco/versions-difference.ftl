<#include "include/alfresco-template.ftl" />
<#import "import/alfresco-layout.ftl" as layout />

<@templateHeader>
 <@markup id="location-hash">
   
  <!-- </@>
   <@markup id="resizer">
      <script type="text/javascript">//<![CDATA[
         new Alfresco.widget.Resizer("DocumentLibrary").setOptions({
            initialWidth: 225
         });
      //]]></script>
   </@> -->
   <@script type="text/javascript" src="${url.context}/res/modules/documentlibrary/doclib-actions.js" group="documentlibrary"></@script>
   <@link rel="stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/document-details-panel.css" />
   <@link rel="diff_stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/versions-diff-page.css" />
    <@templateHtmlEditorAssets />
</@>
   
<@templateBody>


<@markup id="alf-hd">
   <div id="alf-hd">
      <@region scope="global" id="share-header" chromeless="true"/>
   </div>
   </@>
   <@markup id="bd">
   <div id="bd">
      <@region id="actions-common" scope="template"/>
         <div class="yui-b first" id="left-column" rel="diff_stylesheet">
            <@region id="left-node-header" scope="page"/>
            <@region id="left-column" class="left-column" rel="diff_stylesheet" scope="page"/>
         </div>
          <!-- <div id="yui-main">
            <div class="yui-b" id="alf-content">
               <@region id="documentlist_v2" scope="template"/>
            </div>
         </div> -->
	<div class="yui-b" id="right-column" rel="diff_stylesheet">
            <@region id="right-node-header" scope="page"/>
            <@region id="right-column" class="right-column" rel="diff_stylesheet" scope="page"/>
         </div>
    </div> 
   <@region id="doclib-custom" scope="template"/>
   </@>
</@>

<@templateFooter>
   <div id="alf-ft">
      <@region id="footer" scope="global"/>
   </div>
</@>
