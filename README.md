## Park University, KC-FED 2019, MeL Mark, John Carrazco, Jay Canty, Vincent Payne
## Background
Our team's approach to the theme of "fostering entrepreneurship" was to balance the advantage that larger companies have over startups/entrepreneurs in being able to staff teams of QA testers to ensure the quality and integrity of their software/product. To this end, we wrote an automated regression suite in [Robot Framework](https://robotframework.org/), which is an automation language based on [Selenium](https://www.seleniumhq.org/). We followed the [Page Object Model](https://medium.com/tech-tajawal/page-object-model-pom-design-pattern-f9588630800b) in structuring our repository as well as followed the best practices of [Robot Framework](https://robotframework.org/). So instead of hiring 20+ employees to test a product, a company could kickoff their automated suite and get their results more accurately, quickly, and cheaply.
## Installation & Running
In order to run this suite, you need to have [Robot Framework](https://robotframework.org/) installed (pip or brew works fine) as well as [chromedriver](https://chromedriver.chromium.org/downloads) in order to run these GUI-based tests in Chrome (which is what we used, had we had more time we would have made it cross-browser compatible).
<br><br><b>Use this terminal command to run the suite after cd-ing into the repository folder:</b>
<br><br>```robot -d results -v PASSWORD=password -v BROWSER:chrome Tests/```
<br><br>NOTE: you can append it with a '-i yourtaghere' with the yourtaghere being a tag specified in the highest level of the [POM](https://medium.com/tech-tajawal/page-object-model-pom-design-pattern-f9588630800b) and it will only run those tests. More information is available in the [Robot Framework documentation](https://robotframework.org/#documentation).
<br><br>Also, here's a list of commands you might have to run in order to successfully run the suite:
- ```pip install --upgrade robotframework```
- ```pip install --upgrade robotframework-selenium2library```
- ```pip install webdrivermanager```
- ```pip install --upgrade robotframework-requestslibrary```
- ```pip install --upgrade robotframework-requests```
## Reporting
To view the reports, simply hold CMD (Mac) or CNTRL (Windows) and click the Reports HTML file generated after each run. This reporting is great because at a high level, it allows for non-technical individuals to still understand whether or not their tests passed or failed. However, it is doubly fantastic for really digging in and debugging, as it features specific error logs and screenshots.
## Integration
We made a [mock website](http://dandelion-buffalo-2yn8.squarespace.com) (password is 'password') that simulates a small business who runs things from their website. We implemented [build verification testing](https://www.softwaretestinghelp.com/bvt-build-verification-testing-process/) (BVTs) as well as functionality testing, such as pressing buttons and filling out forms. We also implemented [negative testing](https://en.wikipedia.org/wiki/Negative_testing) in addition to [happy-path testing](https://en.wikipedia.org/wiki/Happy_path) as to showcase the potential for a fully-developed suite.
## Here's a YouTube Video
[That explains our process and reasoning along with a brief walkthrough of a run.](https://www.youtube.com/watch?v=FC6rQWJDpq0&feature=youtu.be)
