Version Difference of documents in alfresco share 5.2


I am trying to achive version difference using google api diff patch match in alfresco share. so far i have got the output for the project but there are 2 issues to it.
1. It reloads the page with an error in repo " java.lang.UnsupportedOperationException:This operation is not supported by a version store implementation of the node service." and if i alter the URL by removing site id then it is stable  
2. Correct formatting of the document is missing it just shows the difference between the words.



![alt text](https://raw.githubusercontent.com/tusharkhanka/version-difference-alfresco/master/images/SS%20of%20output.png)
Page reloads (my guesss on the basis of a trial is  that the versionstore can't be called in a site)

![alt text](https://raw.githubusercontent.com/tusharkhanka/version-difference-alfresco/master/images/SS%20of%20output%20with%20altered%20url.png)
Page is stable when the called outside from site.

