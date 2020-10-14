within BIOMD328;
model Atorvastatin_Metabolism "Bucher2011_Atorvastatin_Metabolism" annotation(Documentation(info="<annotation>
    <jd2:JDesignerLayout BuildVersion=\"47\" MajorVersion=\"2\" MinorVersion=\"1\" version=\"2.0\">
      <jd2:header>
        <jd2:VersionHeader JDesignerVersion=\"2.0\"/>
        <jd2:ModelHeader Author=\"Joachim Bucher\" ModelTitle=\"Atorvastatin_Metabolism\" ModelVersion=\"1.0\"/>
        <jd2:TimeCourseDetails numberOfPoints=\"1000\" timeEnd=\"600\" timeStart=\"0\"/>
      </jd2:header>
      <jd2:JDGraphicsHeader BackGroundColor=\"FFFFFFEF\"/>
      <jd2:listOfCompartments>
        <jd2:compartment id=\"medium\" size=\"2\" visible=\"true\">
          <jd2:boundingBox h=\"266\" w=\"1010\" x=\"196\" y=\"318\"/>
          <jd2:membraneStyle color=\"FFFFA500\" thickness=\"12\"/>
          <jd2:interiorStyle color=\"FFFFEEEE\"/>
          <jd2:text value=\"medium\" visible=\"true\">
            <jd2:position rx=\"14\" ry=\"48\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
        </jd2:compartment>
        <jd2:compartment id=\"cell\" size=\"0.0142\" visible=\"true\">
          <jd2:boundingBox h=\"508\" w=\"1017\" x=\"192\" y=\"603\"/>
          <jd2:membraneStyle color=\"FFFFA500\" thickness=\"12\"/>
          <jd2:interiorStyle color=\"FFFFEEEE\"/>
          <jd2:text value=\"cell\" visible=\"true\">
            <jd2:position rx=\"24\" ry=\"48\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
        </jd2:compartment>
      </jd2:listOfCompartments>
      <jd2:listOfSpecies>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"AS_m\" initialConcentration=\"8797.15\">
          <jd2:boundingBox x=\"378\" y=\"437\"/>
          <jd2:text value=\"AS_m\" visible=\"true\">
            <jd2:position rx=\"7\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"ASL_m\" initialConcentration=\"30.56\">
          <jd2:boundingBox x=\"451\" y=\"436\"/>
          <jd2:text value=\"ASL_m\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"ASoOH_m\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"728\" y=\"429\"/>
          <jd2:text value=\"ASoOH_m\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"64\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"64\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"26\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"ASLpOH_m\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"819\" y=\"429\"/>
          <jd2:text value=\"ASLpOH_m\" visible=\"true\">
            <jd2:position rx=\"3\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"70\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"70\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"29\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"ASpOH_m\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"625\" y=\"431\"/>
          <jd2:text value=\"ASpOH_m\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"64\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"64\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"26\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"medium\" id=\"ASLoOH_m\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"917\" y=\"433\"/>
          <jd2:text value=\"ASLoOH_m\" visible=\"true\">
            <jd2:position rx=\"3\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"70\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"70\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"29\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"AS_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"370\" y=\"754\"/>
          <jd2:text value=\"AS_c\" visible=\"true\">
            <jd2:position rx=\"9\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASL_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"443\" y=\"896\"/>
          <jd2:text value=\"ASL_c\" visible=\"true\">
            <jd2:position rx=\"6\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASpOH_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"620\" y=\"659\"/>
          <jd2:text value=\"ASpOH_c\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"62\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"62\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"25\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASoOH_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"710\" y=\"780\"/>
          <jd2:text value=\"ASoOH_c\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"62\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"62\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"25\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASLpOH_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"811\" y=\"910\"/>
          <jd2:text value=\"ASLpOH_c\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"68\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"68\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"28\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASLoOH_c\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"907\" y=\"1041\"/>
          <jd2:text value=\"ASLoOH_c\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"68\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"68\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"28\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASpOH_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"1069\" y=\"654\"/>
          <jd2:text value=\"ASpOH_b\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"62\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"62\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"25\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASoOH_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"1071\" y=\"778\"/>
          <jd2:text value=\"ASoOH_b\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"62\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"62\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"25\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASLpOH_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"1063\" y=\"914\"/>
          <jd2:text value=\"ASLpOH_b\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"68\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"68\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"28\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASLoOH_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"1065\" y=\"1038\"/>
          <jd2:text value=\"ASLoOH_b\" visible=\"true\">
            <jd2:position rx=\"4\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"68\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"68\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"28\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"AS_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"260\" y=\"755\"/>
          <jd2:text value=\"AS_b\" visible=\"true\">
            <jd2:position rx=\"9\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
        <jd2:species boundaryCondition=\"false\" compartment=\"cell\" id=\"ASL_b\" initialConcentration=\"0\">
          <jd2:boundingBox x=\"263\" y=\"942\"/>
          <jd2:text value=\"ASL_b\" visible=\"true\">
            <jd2:position rx=\"6\" ry=\"10\"/>
            <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
          </jd2:text>
          <jd2:complex boundarySpeciesStyle=\"bsShadow\" boundaryStyleColor=\"FF0000FF\" captionPosition=\"npCenter\" h=\"32\" id=\"DefaultMolecule\" w=\"48\">
            <jd2:subunit shape=\"suRoundSquare\">
              <jd2:boundingBox h=\"32\" rx=\"0\" ry=\"0\" w=\"48\"/>
              <jd2:text value=\"S1\" visible=\"false\">
                <jd2:position rx=\"18\" ry=\"9\"/>
                <jd2:font fontColor=\"FF000000\" fontName=\"Arial\" fontSize=\"8\"/>
              </jd2:text>
              <jd2:color endColor=\"FFFFFFFF\" scheme=\"gtLinear\" startColor=\"FFCCFFFF\"/>
              <jd2:edgeStyle color=\"FF969696\" stroke=\"dsSolid\" thickness=\"1\"/>
            </jd2:subunit>
          </jd2:complex>
        </jd2:species>
      </jd2:listOfSpecies>
      <jd2:listOfReactions>
        <jd2:reaction id=\"Import_AS\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_AS_k\" value=\"0.020335\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_m\" type=\"substrate\" x=\"402\" y=\"453\"/>
                <jd2:pt type=\"controlPoint\" x=\"429\" y=\"688\"/>
                <jd2:pt type=\"controlPoint\" x=\"429\" y=\"688\"/>
                <jd2:pt speciesRef=\"AS_c\" type=\"product\" x=\"394\" y=\"770\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Import_ASL\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_ASL_k\" value=\"0.2754\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_m\" type=\"substrate\" x=\"475\" y=\"452\"/>
                <jd2:pt type=\"controlPoint\" x=\"519\" y=\"708\"/>
                <jd2:pt type=\"controlPoint\" x=\"518\" y=\"707\"/>
                <jd2:pt speciesRef=\"ASL_c\" type=\"product\" x=\"467\" y=\"912\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CYP3A4_ASpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"533\" y=\"754\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
          </jd2:listOfModifierEdges>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"CYP3A4_ASpOH_Vmax/CYP3A4_ASpOH_Km1*AS_c/(1+AS_c/CYP3A4_ASpOH_Km1+AS_c/CYP3A4_ASoOH_Km1+ASL_c/CYP3A4_ASLpOH_Km1+ASL_c/CYP3A4_ASLoOH_Km1)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"CYP3A4_ASpOH_Vmax\" value=\"15.7336\"/>
              <jd2:parameter id=\"CYP3A4_ASpOH_Km1\" value=\"25600\"/>
              <jd2:parameter id=\"CYP3A4_ASoOH_Km1\" value=\"29700\"/>
              <jd2:parameter id=\"CYP3A4_ASLpOH_Km1\" value=\"1400\"/>
              <jd2:parameter id=\"CYP3A4_ASLoOH_Km1\" value=\"3900\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_c\" type=\"substrate\" x=\"394\" y=\"770\"/>
                <jd2:pt type=\"controlPoint\" x=\"551\" y=\"748\"/>
                <jd2:pt type=\"controlPoint\" x=\"551\" y=\"747\"/>
                <jd2:pt speciesRef=\"ASpOH_c\" type=\"product\" x=\"651\" y=\"675\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CYP3A4_ASoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"ASL_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"ASL_c\" type=\"modifier\" x=\"467\" y=\"912\"/>
                  <jd2:pt x=\"576\" y=\"799\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
          </jd2:listOfModifierEdges>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"CYP3A4_ASoOH_Vmax/CYP3A4_ASoOH_Km1*AS_c/(1+AS_c/CYP3A4_ASpOH_Km1+AS_c/CYP3A4_ASoOH_Km1+ASL_c/CYP3A4_ASLpOH_Km1+ASL_c/CYP3A4_ASLoOH_Km1)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"CYP3A4_ASoOH_Vmax\" value=\"47.4985\"/>
              <jd2:parameter id=\"CYP3A4_ASoOH_Km1\" value=\"29700\"/>
              <jd2:parameter id=\"CYP3A4_ASpOH_Km1\" value=\"25600\"/>
              <jd2:parameter id=\"CYP3A4_ASLpOH_Km1\" value=\"1400\"/>
              <jd2:parameter id=\"CYP3A4_ASLoOH_Km1\" value=\"3900\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_c\" type=\"substrate\" x=\"394\" y=\"770\"/>
                <jd2:pt type=\"controlPoint\" x=\"593\" y=\"792\"/>
                <jd2:pt type=\"controlPoint\" x=\"593\" y=\"791\"/>
                <jd2:pt speciesRef=\"ASoOH_c\" type=\"product\" x=\"741\" y=\"796\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CYP3A4_ASLpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLpOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"694\" y=\"928\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
          </jd2:listOfModifierEdges>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"CYP3A4_ASLpOH_Vmax/CYP3A4_ASLpOH_Km1*ASL_c/(1+AS_c/CYP3A4_ASpOH_Km1+AS_c/CYP3A4_ASoOH_Km1+ASL_c/CYP3A4_ASLpOH_Km1+ASL_c/CYP3A4_ASLoOH_Km1)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"CYP3A4_ASLpOH_Vmax\" value=\"17.4446\"/>
              <jd2:parameter id=\"CYP3A4_ASLpOH_Km1\" value=\"1400\"/>
              <jd2:parameter id=\"CYP3A4_ASpOH_Km1\" value=\"25600\"/>
              <jd2:parameter id=\"CYP3A4_ASoOH_Km1\" value=\"29700\"/>
              <jd2:parameter id=\"CYP3A4_ASLoOH_Km1\" value=\"3900\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_c\" type=\"substrate\" x=\"467\" y=\"912\"/>
                <jd2:pt type=\"controlPoint\" x=\"722\" y=\"949\"/>
                <jd2:pt type=\"controlPoint\" x=\"721\" y=\"948\"/>
                <jd2:pt speciesRef=\"ASLpOH_c\" type=\"product\" x=\"845\" y=\"926\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CYP3A4_ASLoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
            <jd2:modifierEdge>
              <jd2:speciesReference species=\"AS_c\"/>
              <jd2:destinationReaction destinationArcId=\"0\" destinationLineSegmentId=\"0\" name=\"CYP3A4_ASLoOH\" regulatorType=\"rtPositive\" relativePosition=\"0.5\"/>
              <jd2:display lineColor=\"FFFF0000\" lineDashStyle=\"dsSolid\" lineThickness=\"2\" positiveMarkerStyle=\"rmEmptyCircle\">
                <jd2:lineType type=\"ltLine\">
                  <jd2:pt speciesRef=\"AS_c\" type=\"modifier\" x=\"394\" y=\"770\"/>
                  <jd2:pt x=\"652\" y=\"987\"/>
                </jd2:lineType>
              </jd2:display>
            </jd2:modifierEdge>
          </jd2:listOfModifierEdges>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"CYP3A4_ASLoOH_Vmax/CYP3A4_ASLoOH_Km1*ASL_c/(1+AS_c/CYP3A4_ASpOH_Km1+AS_c/CYP3A4_ASoOH_Km1+ASL_c/CYP3A4_ASLpOH_Km1+ASL_c/CYP3A4_ASLoOH_Km1)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"CYP3A4_ASLoOH_Vmax\" value=\"39.1342\"/>
              <jd2:parameter id=\"CYP3A4_ASLoOH_Km1\" value=\"3900\"/>
              <jd2:parameter id=\"CYP3A4_ASpOH_Km1\" value=\"25600\"/>
              <jd2:parameter id=\"CYP3A4_ASoOH_Km1\" value=\"29700\"/>
              <jd2:parameter id=\"CYP3A4_ASLpOH_Km1\" value=\"1400\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_c\" type=\"substrate\" x=\"467\" y=\"912\"/>
                <jd2:pt type=\"controlPoint\" x=\"656\" y=\"1008\"/>
                <jd2:pt type=\"controlPoint\" x=\"654\" y=\"1008\"/>
                <jd2:pt speciesRef=\"ASLoOH_c\" type=\"product\" x=\"941\" y=\"1057\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_ASoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_ASoOH_k\" value=\"0.0015983\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASoOH_c\" type=\"substrate\" x=\"741\" y=\"796\"/>
                <jd2:pt type=\"controlPoint\" x=\"780\" y=\"629\"/>
                <jd2:pt type=\"controlPoint\" x=\"780\" y=\"629\"/>
                <jd2:pt speciesRef=\"ASoOH_m\" type=\"product\" x=\"760\" y=\"445\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"UGT1A3_AS\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"UGT1A3_AS_Vmax*AS_c/(UGT1A3_AS_Km1+AS_c+AS_c*AS_c/UGT1A3_AS_KI1)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"UGT1A3_AS_Vmax\" value=\"13.5862\"/>
              <jd2:parameter id=\"UGT1A3_AS_Km1\" value=\"12000\"/>
              <jd2:parameter id=\"UGT1A3_AS_KI1\" value=\"75000\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_c\" type=\"substrate\" x=\"394\" y=\"770\"/>
                <jd2:pt type=\"controlPoint\" x=\"415\" y=\"836\"/>
                <jd2:pt type=\"controlPoint\" x=\"415\" y=\"838\"/>
                <jd2:pt speciesRef=\"ASL_c\" type=\"product\" x=\"467\" y=\"912\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"R_ASASL_c\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"(k_CR_ASL_c+k_PON_ASL_c)*ASL_c\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_c\" value=\"3.55E-5\"/>
              <jd2:parameter id=\"k_PON_ASL_c\" value=\"0.0043734\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_c\" type=\"substrate\" x=\"467\" y=\"912\"/>
                <jd2:pt type=\"controlPoint\" x=\"381\" y=\"864\"/>
                <jd2:pt type=\"controlPoint\" x=\"382\" y=\"864\"/>
                <jd2:pt speciesRef=\"AS_c\" type=\"product\" x=\"394\" y=\"770\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CR_oOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"(k_CR_ASL_c+k_PON_OH_c)*ASLoOH_c\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_c\" value=\"3.55E-5\"/>
              <jd2:parameter id=\"k_PON_OH_c\" value=\"0.0039829\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLoOH_c\" type=\"substrate\" x=\"941\" y=\"1057\"/>
                <jd2:pt type=\"controlPoint\" x=\"737\" y=\"928\"/>
                <jd2:pt type=\"controlPoint\" x=\"737\" y=\"929\"/>
                <jd2:pt speciesRef=\"ASoOH_c\" type=\"product\" x=\"741\" y=\"796\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"CR_pOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"(k_CR_ASL_c+k_PON_OH_c)*ASLpOH_c\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_c\" value=\"3.55E-5\"/>
              <jd2:parameter id=\"k_PON_OH_c\" value=\"0.0039829\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLpOH_c\" type=\"substrate\" x=\"845\" y=\"926\"/>
                <jd2:pt type=\"controlPoint\" x=\"676\" y=\"844\"/>
                <jd2:pt type=\"controlPoint\" x=\"676\" y=\"844\"/>
                <jd2:pt speciesRef=\"ASpOH_c\" type=\"product\" x=\"651\" y=\"675\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_AS\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"AS_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_AS_k\" value=\"0.002166\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_c\" type=\"substrate\" x=\"394\" y=\"770\"/>
                <jd2:pt type=\"controlPoint\" x=\"343\" y=\"595\"/>
                <jd2:pt type=\"controlPoint\" x=\"342\" y=\"596\"/>
                <jd2:pt speciesRef=\"AS_m\" type=\"product\" x=\"402\" y=\"453\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_ASL\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASL_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_ASL_k\" value=\"0.021822\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_c\" type=\"substrate\" x=\"467\" y=\"912\"/>
                <jd2:pt type=\"controlPoint\" x=\"482\" y=\"712\"/>
                <jd2:pt type=\"controlPoint\" x=\"483\" y=\"713\"/>
                <jd2:pt speciesRef=\"ASL_m\" type=\"product\" x=\"475\" y=\"452\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Import_ASLpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_ASLpOH_k\" value=\"0.033729\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLpOH_m\" type=\"substrate\" x=\"854\" y=\"445\"/>
                <jd2:pt type=\"controlPoint\" x=\"845\" y=\"740\"/>
                <jd2:pt type=\"controlPoint\" x=\"844\" y=\"740\"/>
                <jd2:pt speciesRef=\"ASLpOH_c\" type=\"product\" x=\"845\" y=\"926\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Import_ASLoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_ASLoOH_k\" value=\"0.026122\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLoOH_m\" type=\"substrate\" x=\"952\" y=\"449\"/>
                <jd2:pt type=\"controlPoint\" x=\"946\" y=\"772\"/>
                <jd2:pt type=\"controlPoint\" x=\"945\" y=\"775\"/>
                <jd2:pt speciesRef=\"ASLoOH_c\" type=\"product\" x=\"941\" y=\"1057\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"ASpOH_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_AS)/fu_AS*ASpOH_c-ASpOH_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_AS\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASpOH_c\" type=\"substrate\" x=\"651\" y=\"675\"/>
                <jd2:pt type=\"controlPoint\" x=\"824\" y=\"659\"/>
                <jd2:pt type=\"controlPoint\" x=\"823\" y=\"660\"/>
                <jd2:pt speciesRef=\"ASpOH_b\" type=\"product\" x=\"1100\" y=\"670\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"ASoOH_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_AS)/fu_AS*ASoOH_c-ASoOH_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_AS\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltLine\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASoOH_c\" type=\"substrate\" x=\"741\" y=\"796\"/>
                <jd2:pt speciesRef=\"ASoOH_b\" type=\"product\" x=\"1102\" y=\"794\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"ASLpOH_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLpOH_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_ASL)/fu_ASL*ASLpOH_c-ASLpOH_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_ASL\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLpOH_c\" type=\"substrate\" x=\"845\" y=\"926\"/>
                <jd2:pt type=\"controlPoint\" x=\"969\" y=\"925\"/>
                <jd2:pt type=\"controlPoint\" x=\"969\" y=\"925\"/>
                <jd2:pt speciesRef=\"ASLpOH_b\" type=\"product\" x=\"1097\" y=\"930\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"ASLoOH_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLoOH_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_ASL)/fu_ASL*ASLoOH_c-ASLoOH_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_ASL\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLoOH_c\" type=\"substrate\" x=\"941\" y=\"1057\"/>
                <jd2:pt type=\"controlPoint\" x=\"1021\" y=\"1053\"/>
                <jd2:pt type=\"controlPoint\" x=\"1023\" y=\"1051\"/>
                <jd2:pt speciesRef=\"ASLoOH_b\" type=\"product\" x=\"1099\" y=\"1054\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"AS_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"AS_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"AS_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_AS)/fu_AS*AS_c-AS_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_AS\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"AS_c\" type=\"substrate\" x=\"394\" y=\"770\"/>
                <jd2:pt type=\"controlPoint\" x=\"342\" y=\"767\"/>
                <jd2:pt type=\"controlPoint\" x=\"338\" y=\"765\"/>
                <jd2:pt speciesRef=\"AS_b\" type=\"product\" x=\"284\" y=\"771\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"ASL_Prot\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASL_b\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"Prot_k1*((1-fu_ASL)/fu_ASL*ASL_c-ASL_b)\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Prot_k1\" value=\"8.52\"/>
              <jd2:parameter id=\"fu_ASL\" value=\"0.22\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_c\" type=\"substrate\" x=\"467\" y=\"912\"/>
                <jd2:pt type=\"controlPoint\" x=\"391\" y=\"952\"/>
                <jd2:pt type=\"controlPoint\" x=\"391\" y=\"951\"/>
                <jd2:pt speciesRef=\"ASL_b\" type=\"product\" x=\"287\" y=\"958\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Import_ASpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_ASpOH_k\" value=\"0.0039614\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASpOH_m\" type=\"substrate\" x=\"657\" y=\"447\"/>
                <jd2:pt type=\"controlPoint\" x=\"641\" y=\"634\"/>
                <jd2:pt type=\"controlPoint\" x=\"643\" y=\"634\"/>
                <jd2:pt speciesRef=\"ASpOH_c\" type=\"product\" x=\"651\" y=\"675\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"R_ASASL_m\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASL_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"AS_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"k_CR_ASL_m*ASL_m\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_m\" value=\"0.005\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASL_m\" type=\"substrate\" x=\"475\" y=\"452\"/>
                <jd2:pt type=\"controlPoint\" x=\"437\" y=\"408\"/>
                <jd2:pt type=\"controlPoint\" x=\"437\" y=\"409\"/>
                <jd2:pt speciesRef=\"AS_m\" type=\"product\" x=\"402\" y=\"453\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"R_pOH_m\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"k_CR_ASL_m*ASLpOH_m\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_m\" value=\"0.005\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLpOH_m\" type=\"substrate\" x=\"854\" y=\"445\"/>
                <jd2:pt type=\"controlPoint\" x=\"760\" y=\"383\"/>
                <jd2:pt type=\"controlPoint\" x=\"760\" y=\"383\"/>
                <jd2:pt speciesRef=\"ASpOH_m\" type=\"product\" x=\"657\" y=\"447\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"R_oOH_m\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"explicit\">
            <jd2:rateEquation value=\"k_CR_ASL_m*ASLoOH_m\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"k_CR_ASL_m\" value=\"0.005\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLoOH_m\" type=\"substrate\" x=\"952\" y=\"449\"/>
                <jd2:pt type=\"controlPoint\" x=\"870\" y=\"375\"/>
                <jd2:pt type=\"controlPoint\" x=\"870\" y=\"373\"/>
                <jd2:pt speciesRef=\"ASoOH_m\" type=\"product\" x=\"760\" y=\"445\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_ASLpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_ASLpOH_k\" value=\"0.0011319\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLpOH_c\" type=\"substrate\" x=\"845\" y=\"926\"/>
                <jd2:pt type=\"controlPoint\" x=\"818\" y=\"641\"/>
                <jd2:pt type=\"controlPoint\" x=\"822\" y=\"641\"/>
                <jd2:pt speciesRef=\"ASLpOH_m\" type=\"product\" x=\"854\" y=\"445\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_ASLoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASLoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASLoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_ASLoOH_k\" value=\"0.0026674\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASLoOH_c\" type=\"substrate\" x=\"941\" y=\"1057\"/>
                <jd2:pt type=\"controlPoint\" x=\"926\" y=\"668\"/>
                <jd2:pt type=\"controlPoint\" x=\"924\" y=\"667\"/>
                <jd2:pt speciesRef=\"ASLoOH_m\" type=\"product\" x=\"952\" y=\"449\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Export_ASpOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASpOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASpOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Export_ASpOH_k\" value=\"0.00079526\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASpOH_c\" type=\"substrate\" x=\"651\" y=\"675\"/>
                <jd2:pt type=\"controlPoint\" x=\"662\" y=\"561\"/>
                <jd2:pt type=\"controlPoint\" x=\"662\" y=\"561\"/>
                <jd2:pt speciesRef=\"ASpOH_m\" type=\"product\" x=\"657\" y=\"447\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
        <jd2:reaction id=\"Import_ASoOH\" reversible=\"false\">
          <jd2:listOfReactants>
            <jd2:speciesReference species=\"ASoOH_m\" stoichiometry=\"1\"/>
          </jd2:listOfReactants>
          <jd2:listOfProducts>
            <jd2:speciesReference species=\"ASoOH_c\" stoichiometry=\"1\"/>
          </jd2:listOfProducts>
          <jd2:listOfModifierEdges/>
          <jd2:kineticLaw type=\"builtin\">
            <jd2:rateEquation value=\"imm\"/>
            <jd2:listOfSymbols>
              <jd2:parameter id=\"Import_ASoOH_k\" value=\"0.00038875\"/>
            </jd2:listOfSymbols>
          </jd2:kineticLaw>
          <jd2:display arrowFillColor=\"FF808080\" arrowStyle=\"ar1\" lineColor=\"FF0066FF\" lineThickness=\"2\">
            <jd2:lineType type=\"ltBezier\">
              <jd2:edge>
                <jd2:pt speciesRef=\"ASoOH_m\" type=\"substrate\" x=\"760\" y=\"445\"/>
                <jd2:pt type=\"controlPoint\" x=\"738\" y=\"621\"/>
                <jd2:pt type=\"controlPoint\" x=\"738\" y=\"621\"/>
                <jd2:pt speciesRef=\"ASoOH_c\" type=\"product\" x=\"741\" y=\"796\"/>
              </jd2:edge>
            </jd2:lineType>
          </jd2:display>
        </jd2:reaction>
      </jd2:listOfReactions>
    </jd2:JDesignerLayout>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_cell elmt_cell;
    Class_elmt_compartment elmt_compartment;
    Class_elmt_medium elmt_medium;

    equation
        Reacs.elmt_Export_ASL_k = Params.elmt_Export_ASL_k;
        Reacs.elmt_CYP3A4_ASLoOH_Km1 = Params.elmt_CYP3A4_ASLoOH_Km1;
        Reacs.elmt_Import_ASL_k = Params.elmt_Import_ASL_k;
        Reacs.elmt_Import_ASLpOH_k = Params.elmt_Import_ASLpOH_k;
        Reacs.elmt_ASpOH_c = elmt_cell.elmt_ASpOH_c;
        Reacs.elmt_fu_ASL = Params.elmt_fu_ASL;
        Reacs.elmt_ASpOH_b = elmt_cell.elmt_ASpOH_b;
        Reacs.elmt_ASoOH_c = elmt_cell.elmt_ASoOH_c;
        Reacs.elmt_ASoOH_b = elmt_cell.elmt_ASoOH_b;
        Reacs.elmt_fu_AS = Params.elmt_fu_AS;
        Reacs.elmt_CYP3A4_ASLpOH_Vmax = Params.elmt_CYP3A4_ASLpOH_Vmax;
        Reacs.elmt_CYP3A4_ASpOH_Km1 = Params.elmt_CYP3A4_ASpOH_Km1;
        Reacs.elmt_Export_ASLpOH_k = Params.elmt_Export_ASLpOH_k;
        Reacs.elmt_ASLoOH_c = elmt_cell.elmt_ASLoOH_c;
        Reacs.elmt_ASLoOH_b = elmt_cell.elmt_ASLoOH_b;
        Reacs.elmt_CYP3A4_ASLoOH_Vmax = Params.elmt_CYP3A4_ASLoOH_Vmax;
        Reacs.elmt_UGT1A3_AS_KI1 = Params.elmt_UGT1A3_AS_KI1;
        Reacs.elmt_ASoOH_m = elmt_medium.elmt_ASoOH_m;
        Reacs.elmt_Export_ASLoOH_k = Params.elmt_Export_ASLoOH_k;
        Reacs.elmt_Prot_k1 = Params.elmt_Prot_k1;
        Reacs.elmt_ASpOH_m = elmt_medium.elmt_ASpOH_m;
        Reacs.elmt_ASLoOH_m = elmt_medium.elmt_ASLoOH_m;
        Reacs.elmt_Import_AS_k = Params.elmt_Import_AS_k;
        Reacs.elmt_CYP3A4_ASoOH_Km1 = Params.elmt_CYP3A4_ASoOH_Km1;
        Reacs.elmt_AS_m = elmt_medium.elmt_AS_m;
        Reacs.elmt_ASLpOH_b = elmt_cell.elmt_ASLpOH_b;
        Reacs.elmt_ASLpOH_c = elmt_cell.elmt_ASLpOH_c;
        Reacs.elmt_k_PON_ASL_c = Params.elmt_k_PON_ASL_c;
        Reacs.elmt_Export_ASoOH_k = Params.elmt_Export_ASoOH_k;
        Reacs.elmt_CYP3A4_ASLpOH_Km1 = Params.elmt_CYP3A4_ASLpOH_Km1;
        Reacs.elmt_Import_ASpOH_k = Params.elmt_Import_ASpOH_k;
        Reacs.elmt_CYP3A4_ASpOH_Vmax = Params.elmt_CYP3A4_ASpOH_Vmax;
        Reacs.elmt_CYP3A4_ASoOH_Vmax = Params.elmt_CYP3A4_ASoOH_Vmax;
        Reacs.elmt_ASL_b = elmt_cell.elmt_ASL_b;
        Reacs.elmt_UGT1A3_AS_Km1 = Params.elmt_UGT1A3_AS_Km1;
        Reacs.elmt_ASLpOH_m = elmt_medium.elmt_ASLpOH_m;
        Reacs.elmt_ASL_c = elmt_cell.elmt_ASL_c;
        Reacs.elmt_Import_ASLoOH_k = Params.elmt_Import_ASLoOH_k;
        Reacs.elmt_Export_ASpOH_k = Params.elmt_Export_ASpOH_k;
        Reacs.elmt_Export_AS_k = Params.elmt_Export_AS_k;
        Reacs.elmt_ASL_m = elmt_medium.elmt_ASL_m;
        Reacs.elmt_AS_c = elmt_cell.elmt_AS_c;
        Reacs.elmt_k_CR_ASL_c = Params.elmt_k_CR_ASL_c;
        Reacs.elmt_k_PON_OH_c = Params.elmt_k_PON_OH_c;
        Reacs.elmt_AS_b = elmt_cell.elmt_AS_b;
        Reacs.elmt_UGT1A3_AS_Vmax = Params.elmt_UGT1A3_AS_Vmax;
        Reacs.elmt_k_CR_ASL_m = Params.elmt_k_CR_ASL_m;
        Reacs.elmt_Import_ASoOH_k = Params.elmt_Import_ASoOH_k;
        elmt_medium.elmt_product51 = Reacs.elmt_product51;
        elmt_medium.elmt_reactant42 = Reacs.elmt_reactant42;
        elmt_medium.elmt_product55 = Reacs.elmt_product55;
        elmt_medium.elmt_product53 = Reacs.elmt_product53;
        elmt_medium.elmt_reactant48 = Reacs.elmt_reactant48;
        elmt_medium.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_medium.elmt_R_pOH_m = Reacs.elmt_R_pOH_m;
        elmt_medium.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_medium.elmt_reactant44 = Reacs.elmt_reactant44;
        elmt_medium.elmt_reactant46 = Reacs.elmt_reactant46;
        elmt_medium.elmt_Export_ASoOH = Reacs.elmt_Export_ASoOH;
        elmt_medium.elmt_Export_ASpOH = Reacs.elmt_Export_ASpOH;
        elmt_medium.elmt_Export_ASLoOH = Reacs.elmt_Export_ASLoOH;
        elmt_medium.elmt_Export_ASLpOH = Reacs.elmt_Export_ASLpOH;
        elmt_medium.elmt_Export_ASL = Reacs.elmt_Export_ASL;
        elmt_medium.elmt_product49 = Reacs.elmt_product49;
        elmt_medium.elmt_product25 = Reacs.elmt_product25;
        elmt_medium.elmt_product47 = Reacs.elmt_product47;
        elmt_medium.elmt_R_oOH_m = Reacs.elmt_R_oOH_m;
        elmt_medium.elmt_Export_AS = Reacs.elmt_Export_AS;
        elmt_medium.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_medium.elmt_R_ASASL_m = Reacs.elmt_R_ASASL_m;
        elmt_medium.elmt_product23 = Reacs.elmt_product23;
        elmt_medium.elmt_product45 = Reacs.elmt_product45;
        elmt_medium.elmt_Import_AS = Reacs.elmt_Import_AS;
        elmt_medium.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_medium.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_medium.elmt_Import_ASpOH = Reacs.elmt_Import_ASpOH;
        elmt_medium.elmt_Import_ASLoOH = Reacs.elmt_Import_ASLoOH;
        elmt_medium.elmt_Import_ASoOH = Reacs.elmt_Import_ASoOH;
        elmt_medium.elmt_product13 = Reacs.elmt_product13;
        elmt_medium.elmt_Import_ASL = Reacs.elmt_Import_ASL;
        elmt_medium.elmt_Import_ASLpOH = Reacs.elmt_Import_ASLpOH;
        elmt_cell.elmt_reactant40 = Reacs.elmt_reactant40;
        elmt_cell.elmt_product33 = Reacs.elmt_product33;
        elmt_cell.elmt_product31 = Reacs.elmt_product31;
        elmt_cell.elmt_Export_ASoOH = Reacs.elmt_Export_ASoOH;
        elmt_cell.elmt_CYP3A4_ASLoOH = Reacs.elmt_CYP3A4_ASLoOH;
        elmt_cell.elmt_Export_ASLpOH = Reacs.elmt_Export_ASLpOH;
        elmt_cell.elmt_product27 = Reacs.elmt_product27;
        elmt_cell.elmt_CR_pOH = Reacs.elmt_CR_pOH;
        elmt_cell.elmt_product29 = Reacs.elmt_product29;
        elmt_cell.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_cell.elmt_product41 = Reacs.elmt_product41;
        elmt_cell.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_cell.elmt_CYP3A4_ASoOH = Reacs.elmt_CYP3A4_ASoOH;
        elmt_cell.elmt_AS_Prot = Reacs.elmt_AS_Prot;
        elmt_cell.elmt_product43 = Reacs.elmt_product43;
        elmt_cell.elmt_reactant14 = Reacs.elmt_reactant14;
        elmt_cell.elmt_reactant16 = Reacs.elmt_reactant16;
        elmt_cell.elmt_Import_AS = Reacs.elmt_Import_AS;
        elmt_cell.elmt_reactant54 = Reacs.elmt_reactant54;
        elmt_cell.elmt_ASpOH_Prot = Reacs.elmt_ASpOH_Prot;
        elmt_cell.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_cell.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_cell.elmt_Import_ASLoOH = Reacs.elmt_Import_ASLoOH;
        elmt_cell.elmt_ASLpOH_Prot = Reacs.elmt_ASLpOH_Prot;
        elmt_cell.elmt_Import_ASpOH = Reacs.elmt_Import_ASpOH;
        elmt_cell.elmt_UGT1A3_AS = Reacs.elmt_UGT1A3_AS;
        elmt_cell.elmt_product37 = Reacs.elmt_product37;
        elmt_cell.elmt_product35 = Reacs.elmt_product35;
        elmt_cell.elmt_product39 = Reacs.elmt_product39;
        elmt_cell.elmt_reactant20 = Reacs.elmt_reactant20;
        elmt_cell.elmt_product11 = Reacs.elmt_product11;
        elmt_cell.elmt_reactant22 = Reacs.elmt_reactant22;
        elmt_cell.elmt_ASL_Prot = Reacs.elmt_ASL_Prot;
        elmt_cell.elmt_reactant24 = Reacs.elmt_reactant24;
        elmt_cell.elmt_Export_ASpOH = Reacs.elmt_Export_ASpOH;
        elmt_cell.elmt_CYP3A4_ASLpOH = Reacs.elmt_CYP3A4_ASLpOH;
        elmt_cell.elmt_Export_ASLoOH = Reacs.elmt_Export_ASLoOH;
        elmt_cell.elmt_reactant18 = Reacs.elmt_reactant18;
        elmt_cell.elmt_Export_ASL = Reacs.elmt_Export_ASL;
        elmt_cell.elmt_CR_oOH = Reacs.elmt_CR_oOH;
        elmt_cell.elmt_product9 = Reacs.elmt_product9;
        elmt_cell.elmt_Export_AS = Reacs.elmt_Export_AS;
        elmt_cell.elmt_CYP3A4_ASpOH = Reacs.elmt_CYP3A4_ASpOH;
        elmt_cell.elmt_reactant30 = Reacs.elmt_reactant30;
        elmt_cell.elmt_reactant4 = Reacs.elmt_reactant4;
        elmt_cell.elmt_product7 = Reacs.elmt_product7;
        elmt_cell.elmt_reactant6 = Reacs.elmt_reactant6;
        elmt_cell.elmt_product21 = Reacs.elmt_product21;
        elmt_cell.elmt_reactant8 = Reacs.elmt_reactant8;
        elmt_cell.elmt_reactant36 = Reacs.elmt_reactant36;
        elmt_cell.elmt_product1 = Reacs.elmt_product1;
        elmt_cell.elmt_reactant38 = Reacs.elmt_reactant38;
        elmt_cell.elmt_ASoOH_Prot = Reacs.elmt_ASoOH_Prot;
        elmt_cell.elmt_product5 = Reacs.elmt_product5;
        elmt_cell.elmt_reactant32 = Reacs.elmt_reactant32;
        elmt_cell.elmt_reactant34 = Reacs.elmt_reactant34;
        elmt_cell.elmt_product3 = Reacs.elmt_product3;
        elmt_cell.elmt_ASLoOH_Prot = Reacs.elmt_ASLoOH_Prot;
        elmt_cell.elmt_Import_ASoOH = Reacs.elmt_Import_ASoOH;
        elmt_cell.elmt_R_ASASL_c = Reacs.elmt_R_ASASL_c;
        elmt_cell.elmt_product15 = Reacs.elmt_product15;
        elmt_cell.elmt_product57 = Reacs.elmt_product57;
        elmt_cell.elmt_product19 = Reacs.elmt_product19;
        elmt_cell.elmt_Import_ASL = Reacs.elmt_Import_ASL;
        elmt_cell.elmt_Import_ASLpOH = Reacs.elmt_Import_ASLpOH;
        elmt_cell.elmt_product17 = Reacs.elmt_product17;

end Atorvastatin_Metabolism;
