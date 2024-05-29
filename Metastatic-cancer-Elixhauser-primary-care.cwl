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
  metastatic-cancer-elixhauser-primary-care-mneoplasm---primary:
    run: metastatic-cancer-elixhauser-primary-care-mneoplasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  metastatic-cancer-elixhauser-primary-care-multi---primary:
    run: metastatic-cancer-elixhauser-primary-care-multi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-mneoplasm---primary/output
  metastatic-cancer-elixhauser-primary-care-lymph---primary:
    run: metastatic-cancer-elixhauser-primary-care-lymph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-multi---primary/output
  metastatic-cancer-elixhauser-primary-care-unspecified---primary:
    run: metastatic-cancer-elixhauser-primary-care-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-lymph---primary/output
  metastatic-cancer-elixhauser-primary-care-pleura---primary:
    run: metastatic-cancer-elixhauser-primary-care-pleura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-unspecified---primary/output
  metastatic-cancer-elixhauser-primary-care-cervix---primary:
    run: metastatic-cancer-elixhauser-primary-care-cervix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-pleura---primary/output
  small-metastatic-cancer-elixhauser-primary-care---primary:
    run: small-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-cervix---primary/output
  metastatic-cancer-elixhauser-primary-care-ascite---primary:
    run: metastatic-cancer-elixhauser-primary-care-ascite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: small-metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-carcinoma---primary:
    run: metastatic-cancer-elixhauser-primary-care-carcinoma---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-ascite---primary/output
  metastatic-cancer-elixhauser-primary-care-disseminated---primary:
    run: metastatic-cancer-elixhauser-primary-care-disseminated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-carcinoma---primary/output
  metastatic-cancer-elixhauser-primary-care---primary:
    run: metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-disseminated---primary/output
  metastatic-cancer-elixhauser-primary-care-deposits---primary:
    run: metastatic-cancer-elixhauser-primary-care-deposits---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-metastasis---primary:
    run: metastatic-cancer-elixhauser-primary-care-metastasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-deposits---primary/output
  metastatic-cancer-elixhauser-primary-care-breast---primary:
    run: metastatic-cancer-elixhauser-primary-care-breast---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-metastasis---primary/output
  metastatic-cancer-elixhauser-primary-care-vulva---primary:
    run: metastatic-cancer-elixhauser-primary-care-vulva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-breast---primary/output
  large-metastatic-cancer-elixhauser-primary-care---primary:
    run: large-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-vulva---primary/output
  metastatic-cancer-elixhauser-primary-care-gland---primary:
    run: metastatic-cancer-elixhauser-primary-care-gland---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: large-metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-malig---primary:
    run: metastatic-cancer-elixhauser-primary-care-malig---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-gland---primary/output
  secondary-metastatic-cancer-elixhauser-primary-care---primary:
    run: secondary-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-malig---primary/output
  metastatic-cancer-elixhauser-primary-care-brain---primary:
    run: metastatic-cancer-elixhauser-primary-care-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: secondary-metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-system---primary:
    run: metastatic-cancer-elixhauser-primary-care-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-brain---primary/output
  intrapelvic-metastatic-cancer-elixhauser-primary-care---primary:
    run: intrapelvic-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-system---primary/output
  metastatic-cancer-elixhauser-primary-care-axilla---primary:
    run: metastatic-cancer-elixhauser-primary-care-axilla---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: intrapelvic-metastatic-cancer-elixhauser-primary-care---primary/output
  cerebral-metastatic-cancer-elixhauser-primary-care---primary:
    run: cerebral-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-axilla---primary/output
  nervous-metastatic-cancer-elixhauser-primary-care---primary:
    run: nervous-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cerebral-metastatic-cancer-elixhauser-primary-care---primary/output
  upper-metastatic-cancer-elixhauser-primary-care---primary:
    run: upper-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: nervous-metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-liver---primary:
    run: metastatic-cancer-elixhauser-primary-care-liver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: upper-metastatic-cancer-elixhauser-primary-care---primary/output
  metastatic-cancer-elixhauser-primary-care-bladder---primary:
    run: metastatic-cancer-elixhauser-primary-care-bladder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-liver---primary/output
  mediastinal-metastatic-cancer-elixhauser-primary-care---primary:
    run: mediastinal-metastatic-cancer-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: metastatic-cancer-elixhauser-primary-care-bladder---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: mediastinal-metastatic-cancer-elixhauser-primary-care---primary/output
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
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
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
