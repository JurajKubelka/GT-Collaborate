Metacello new
    baseline: #GTSprint;
    repository: 'github://JurajKubelka/GT-Collaborate/repository';
    load: 'webhooks'.

Smalltalk saveAs: 'webhooksServer'.
Smalltalk snapshot: true andQuit: true.
