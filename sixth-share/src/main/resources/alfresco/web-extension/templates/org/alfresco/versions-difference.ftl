<#include "include/alfresco-template.ftl" />
<#import "import/alfresco-layout.ftl" as layout />

<@templateHeader>

<@script type="text/javascript" src="${url.context}/res/modules/documentlibrary/doclib-actions.js"></@script>
<@link rel="diff_stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/versions-diff-page.css" />
<@link rel="stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/document-details-panel.css" />

<@templateHtmlEditorAssets />
</@>
   
<@templateBody>

   <div id="alf-hd">
      <@region scope="global" id="share-header" chromeless="true"/>
      <@region id="title" scope="template"/>
      <@region id="navigation" scope="template"/>

   </div>


   <div id="bd">

      <div class="yui-g">
         <div class="yui-u first" id="left-column" rel="diff_stylesheet">
          <@region id="left-node-header" scope="page"/>
            <@region id="left-column" class="left-column" rel="diff_stylesheet" scope="page"/>
         </div>
         <div class="yui-u" id="right-column" rel="diff_stylesheet">
         <@region id="right-node-header" scope="page"/>
            <@region id="right-column" class="right-column" rel="diff_stylesheet" scope="page"/>
         </div>
      </div>
   </div>
   <@region id="doclib-custom" scope="template"/>
</@>

<@templateFooter>
   <div id="alf-ft">
      <@region id="footer" scope="global"/>
   </div>
</@>
