cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  other-ccu002_01-cardiomyopathy---secondary:
    run: other-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  ccu002_01-cardiomyopathy---secondary:
    run: ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-cardiomyopathy---secondary/output
  restrictive-ccu002_01-cardiomyopathy---secondary:
    run: restrictive-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_01-cardiomyopathy---secondary/output
  ischaemic-ccu002_01-cardiomyopathy---secondary:
    run: ischaemic-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: restrictive-ccu002_01-cardiomyopathy---secondary/output
  ccu002_01-cardiomyopathy-agent---secondary:
    run: ccu002_01-cardiomyopathy-agent---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ischaemic-ccu002_01-cardiomyopathy---secondary/output
  endomyocardial-ccu002_01-cardiomyopathy---secondary:
    run: endomyocardial-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-cardiomyopathy-agent---secondary/output
  scapuloperoneal-ccu002_01-cardiomyopathy---secondary:
    run: scapuloperoneal-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: endomyocardial-ccu002_01-cardiomyopathy---secondary/output
  severe-ccu002_01-cardiomyopathy---secondary:
    run: severe-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: scapuloperoneal-ccu002_01-cardiomyopathy---secondary/output
  familial-ccu002_01-cardiomyopathy---secondary:
    run: familial-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: severe-ccu002_01-cardiomyopathy---secondary/output
  tachyccu002_01-cardiomyopathy-cardiomyopathy---secondary:
    run: tachyccu002_01-cardiomyopathy-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: familial-ccu002_01-cardiomyopathy---secondary/output
  cardiomyopathy---secondary:
    run: cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: tachyccu002_01-cardiomyopathy-cardiomyopathy---secondary/output
  ccu002_01-cardiomyopathy-dystrophy---secondary:
    run: ccu002_01-cardiomyopathy-dystrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: cardiomyopathy---secondary/output
  amyloid-ccu002_01-cardiomyopathy---secondary:
    run: amyloid-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-cardiomyopathy-dystrophy---secondary/output
  ccu002_01-cardiomyopathy-heart---secondary:
    run: ccu002_01-cardiomyopathy-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: amyloid-ccu002_01-cardiomyopathy---secondary/output
  nutritional-ccu002_01-cardiomyopathy---secondary:
    run: nutritional-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-cardiomyopathy-heart---secondary/output
  metabolic-ccu002_01-cardiomyopathy---secondary:
    run: metabolic-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: nutritional-ccu002_01-cardiomyopathy---secondary/output
  muscular-ccu002_01-cardiomyopathy---secondary:
    run: muscular-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: metabolic-ccu002_01-cardiomyopathy---secondary/output
  primary-ccu002_01-cardiomyopathy---secondary:
    run: primary-ccu002_01-cardiomyopathy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: muscular-ccu002_01-cardiomyopathy---secondary/output
  ccu002_01-cardiomyopathy-cardiac---secondary:
    run: ccu002_01-cardiomyopathy-cardiac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: primary-ccu002_01-cardiomyopathy---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-cardiomyopathy-cardiac---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
