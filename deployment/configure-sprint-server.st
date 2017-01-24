Metacello new
    baseline: #GTSprint;
    repository: 'github://JurajKubelka/GT-Collaborate/repository';
    load: 'sprint'.

Smalltalk saveAs: 'sprintServer'.
Smalltalk snapshot: true andQuit: true.
