<#include "include/alfresco-template.ftl" />
<#import "import/alfresco-layout.ftl" as layout />

<@templateHeader>
 <@markup id="location-hash">
   <@script type="text/javascript" src="${url.context}/res/modules/documentlibrary/doclib-actions.js" group="document-details"></@script>
   <@link rel="stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/document-details-panel.css" group="document-details"/>
   <@link rel="diff_stylesheet" type="text/css" href="${page.url.context}/res/components/document-details/versions-diff-page.css" />
   <@templateHtmlEditorAssets />
</@>
</@>
   
<@templateBody>


   <@markup id="alf-hd">
   <div id="alf-hd">
      <@region scope="global" id="share-header" chromeless="true"/>
   </div>
   </@>
   <@markup id="bd">
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
  </@>
</@>

<@templateFooter>
   <div id="alf-ft">
      <@region id="footer" scope="global"/>
   </div>
</@>
