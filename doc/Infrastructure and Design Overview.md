# Infrastructure and Design Overview

## Involved Technologies

- [Pharo Jenkins](https://ci.inria.fr/pharo/)
- [GitHub GT-Collaborate](https://github.com/JurajKubelka/GT-Collaborate)
- [FogBugz](http://pharo.fogbugz.com)
- Pharo Sprint Jenkins Image (not deployed yet)
- Pharo Sprint Server (not deployed yet)
- Pharo Sprint Webpage (not deployed yet)
- Pharo Sprint Image (a downloaded image copy of Pharo Sprint Jenkins Image)

## Pharo Sprint Jenkins. Image Build Process

Input: 
- [Pharo Jenkins](https://ci.inria.fr/pharo/)
- [GitHub GT-Collaborate](https://github.com/JurajKubelka/GT-Collaborate)
- [FogBugz](http://pharo.fogbugz.com)

Ouput:
- Pharo Sprint Jenkins Image

Process: Pharo Sprint Jenkins is a Jenkins job responsible for building Pharo Sprint Jenkins Image based on the latest Pharo development image (Pharo Jenkins), the stable version of GT-Collaborate, and preselected FogBugz cases for the Pharo Sprint events.

## Pharo Sprint FogBugz Cases Preselection

Input: 
- [FogBugz](http://pharo.fogbugz.com)

Ouput:
- Preselected cases

Process: Developers can pre-select cases by adding a tag called `sprint` to any opened case using the FogBugz website.

## Case Assignment

Input:
- Pharo Sprint Image
- Pharo Sprint Webpage

Output:
- [FogBugz](http://pharo.fogbugz.com)

Process: Developers can assign a task using Pharo Sprint App included in the Pharo Sprint Image. Pharo Sprint App sends/receives updates to/from Pharo Sprint Server who is responsible for collecting additional data that are not stored on FogBugz, but necessary for the coordination. 

Pharo Sprint Server receives updates from FogBugz using Webhooks and can change a case status to resolve.

## Case Statuses During Pharo Sprint

### In the Suggested Cases List
- Sugested. A preselected case (an initial state).
- Renounced. Someone took a case before but gave up it (from Taken and Retaken).
- ImproveIt. Someone done a case, but it is necessary to improve it (from Improving, Done, and Reworked).

### In the Taken Cases List
- Taken. A taken case (from Sugested).
- Retaken. A previously renounced case (from Renounced).
- Improving. A taken ImproveIt case (from ImproveIt).

### In the Done Cases List
- Done. A done case (from Taken and Retaken).
- Reworked. An improved case (from Improving).
