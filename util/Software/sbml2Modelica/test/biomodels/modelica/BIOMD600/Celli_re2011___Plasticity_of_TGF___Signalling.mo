within BIOMD600;
model Celli_re2011___Plasticity_of_TGF___Signalling "Cellière2011 - Plasticity of TGF-β Signalling" annotation(Documentation(info="<annotation>
  <celldesigner:extension xmlns:celldesigner=\"http://www.sbml.org/2001/ns/celldesigner\">
    <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
    <celldesigner:modelDisplay sizeX=\"1200\" sizeY=\"1000\"/>
    <celldesigner:listOfCompartmentAliases>
      <celldesigner:compartmentAlias compartment=\"c\" id=\"ca0\">
        <celldesigner:class>SQUARE</celldesigner:class>
        <celldesigner:bounds h=\"491.0\" w=\"919.0\" x=\"27.0\" y=\"141.0\"/>
        <celldesigner:namePoint x=\"885.5\" y=\"594.5\"/>
        <celldesigner:doubleLine innerWidth=\"1.0\" outerWidth=\"2.0\" thickness=\"12.0\"/>
        <celldesigner:paint color=\"ffcccc00\" scheme=\"Color\"/>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:compartmentAlias>
      <celldesigner:compartmentAlias compartment=\"n\" id=\"ca1\">
        <celldesigner:class>SQUARE</celldesigner:class>
        <celldesigner:bounds h=\"345.0\" w=\"912.0\" x=\"25.0\" y=\"649.0\"/>
        <celldesigner:namePoint x=\"884.0\" y=\"957.5\"/>
        <celldesigner:doubleLine innerWidth=\"1.0\" outerWidth=\"2.0\" thickness=\"12.0\"/>
        <celldesigner:paint color=\"ffcccc00\" scheme=\"Color\"/>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:compartmentAlias>
    </celldesigner:listOfCompartmentAliases>
    <celldesigner:listOfComplexSpeciesAliases/>
    <celldesigner:listOfSpeciesAliases>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa0\" species=\"TGFbR\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"759.0\" y=\"155.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"732.0\" y=\"14.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa1\" species=\"TGFb_TGFbR\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"577.0\" y=\"156.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"550.0\" y=\"15.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa2\" species=\"TGFb_TGFbR_P\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"396.0\" y=\"155.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"369.0\" y=\"14.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa3\" species=\"I_Smad_TGFb_TGFbR_P\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"111.0\" y=\"155.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"84.0\" y=\"14.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa4\" species=\"Smad\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"321.0\" y=\"473.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"294.0\" y=\"332.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa5\" species=\"Smad_P\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"471.0\" y=\"473.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"444.0\" y=\"332.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa6\" species=\"CoSmad\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"833.0\" y=\"499.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"806.0\" y=\"358.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa7\" species=\"Smad_P_Smad_P\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"607.0\" y=\"573.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"580.0\" y=\"432.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa8\" species=\"Smad_P_CoSmad\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"726.0\" y=\"561.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"699.0\" y=\"420.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa9\" species=\"Smad_N\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"321.0\" y=\"759.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"296.0\" y=\"110.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa10\" species=\"Smad_P_Smad_P_N\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"607.0\" y=\"669.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"582.0\" y=\"20.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa11\" species=\"Smad_P_N\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"471.0\" y=\"823.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"446.0\" y=\"174.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa12\" species=\"Smad_P_CoSmad_N\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"724.0\" y=\"750.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"699.0\" y=\"101.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa13\" species=\"CoSmad_N\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"834.0\" y=\"803.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"809.0\" y=\"154.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa14\" species=\"I_Smad_mRNA1\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"195.0\" y=\"771.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"170.0\" y=\"122.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa15\" species=\"I_Smad_mRNA2\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"194.0\" y=\"531.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"167.0\" y=\"390.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa16\" species=\"I_Smad\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"40.0\" w=\"80.0\" x=\"113.0\" y=\"410.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"86.0\" y=\"269.0\"/>
          <celldesigner:boxSize height=\"40.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffccffcc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca1\" id=\"sa17\" species=\"s1\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"30.0\" w=\"30.0\" x=\"220.0\" y=\"951.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"195.0\" y=\"302.0\"/>
          <celldesigner:boxSize height=\"30.0\" width=\"30.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffffcccc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa18\" species=\"s2\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"30.0\" w=\"30.0\" x=\"105.0\" y=\"537.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"78.0\" y=\"396.0\"/>
          <celldesigner:boxSize height=\"30.0\" width=\"30.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffffcccc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa19\" species=\"s3\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"30.0\" w=\"30.0\" x=\"269.0\" y=\"418.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"242.0\" y=\"277.0\"/>
          <celldesigner:boxSize height=\"30.0\" width=\"30.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffffcccc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
      <celldesigner:speciesAlias compartmentAlias=\"ca0\" id=\"sa20\" species=\"s4\">
        <celldesigner:activity>inactive</celldesigner:activity>
        <celldesigner:bounds h=\"30.0\" w=\"30.0\" x=\"34.0\" y=\"415.0\"/>
        <celldesigner:font size=\"12\"/>
        <celldesigner:view state=\"usual\"/>
        <celldesigner:usualView>
          <celldesigner:innerPosition x=\"7.0\" y=\"274.0\"/>
          <celldesigner:boxSize height=\"30.0\" width=\"30.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"ffffcccc\" scheme=\"Color\"/>
        </celldesigner:usualView>
        <celldesigner:briefView>
          <celldesigner:innerPosition x=\"0.0\" y=\"0.0\"/>
          <celldesigner:boxSize height=\"60.0\" width=\"80.0\"/>
          <celldesigner:singleLine width=\"1.0\"/>
          <celldesigner:paint color=\"3fff0000\" scheme=\"Color\"/>
        </celldesigner:briefView>
        <celldesigner:info angle=\"-1.5707963267948966\" state=\"empty\"/>
      </celldesigner:speciesAlias>
    </celldesigner:listOfSpeciesAliases>
    <celldesigner:listOfGroups/>
    <celldesigner:listOfProteins>
      <celldesigner:protein id=\"pr1\" name=\"TGFbR\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr2\" name=\"TGFb_TGFbR\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr3\" name=\"TGFb_TGFbR_P\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr4\" name=\"I_Smad_TGFb_TGFbR_P\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr5\" name=\"Smad\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr6\" name=\"Smad_P\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr7\" name=\"CoSmad\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr8\" name=\"Smad_P_Smad_P\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr9\" name=\"Smad_P_CoSmad\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr10\" name=\"Smad_N\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr11\" name=\"Smad_P_Smad_P_N\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr12\" name=\"Smad_P_N\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr13\" name=\"Smad_P_CoSmad_N\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr14\" name=\"CoSmad_N\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr15\" name=\"I_Smad_mRNA1\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr16\" name=\"I_Smad_mRNA2\" type=\"GENERIC\"/>
      <celldesigner:protein id=\"pr17\" name=\"I_Smad\" type=\"GENERIC\"/>
    </celldesigner:listOfProteins>
    <celldesigner:listOfGenes/>
    <celldesigner:listOfRNAs/>
    <celldesigner:listOfAntisenseRNAs/>
    <celldesigner:listOfLayers/>
    <celldesigner:listOfBlockDiagrams/>
  </celldesigner:extension>
  <COPASI xmlns=\"http://www.copasi.org/static/sbml\">
    <rdf:RDF xmlns:CopasiMT=\"http://www.copasi.org/RDF/MiriamTerms#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">
      <rdf:Description rdf:about=\"#COPASI0\">
        <dcterms:bibliographicCitation>
          <rdf:Bag>
            <rdf:li>
              <rdf:Description>
                <CopasiMT:isDescribedBy rdf:resource=\"http://identifiers.org/pubmed/22051045\"/>
              </rdf:Description>
            </rdf:li>
          </rdf:Bag>
        </dcterms:bibliographicCitation>
        <dcterms:created>
          <rdf:Description>
            <dcterms:W3CDTF>2015-11-23T13:34:20Z</dcterms:W3CDTF>
          </rdf:Description>
        </dcterms:created>
        <CopasiMT:is>
          <rdf:Bag>
            <rdf:li rdf:resource=\"http://identifiers.org/biomodels.db/MODEL1208280000\"/>
          </rdf:Bag>
        </CopasiMT:is>
        <CopasiMT:isVersionOf rdf:resource=\"http://identifiers.org/go/GO:0007179\"/>
      </rdf:Description>
    </rdf:RDF>
  </COPASI>
	<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:vCard=\"http://www.w3.org/2001/vcard-rdf/3.0#\" xmlns:dcterms=\"http://purl.org/dc/terms/\" xmlns:bqmodel=\"http://biomodels.net/model-qualifiers/\" xmlns:bqbiol=\"http://biomodels.net/biology-qualifiers/\">
	
	</rdf:RDF>
	</annotation>"));

    Parameters Params;
    Reactions Reacs;
    Class_elmt_n elmt_n;
    Class_elmt_c elmt_c;
    Class_elmt_extracellular elmt_extracellular;

    equation
        Reacs.elmt_n = elmt_n.elmt_n;
        Reacs.elmt_I_Smad_mRNA1 = elmt_n.elmt_I_Smad_mRNA1;
        Reacs.elmt_I_Smad_mRNA2 = elmt_c.elmt_I_Smad_mRNA2;
        Reacs.elmt_h = Params.elmt_h;
        Reacs.elmt_CoSmad_N = elmt_n.elmt_CoSmad_N;
        Reacs.elmt_c = elmt_c.elmt_c;
        Reacs.elmt_I_Smad_TGFb_TGFbR_P = elmt_c.elmt_I_Smad_TGFb_TGFbR_P;
        Reacs.elmt_CoSmad = elmt_c.elmt_CoSmad;
        Reacs.elmt_k16 = Params.elmt_k16;
        Reacs.elmt_k15 = Params.elmt_k15;
        Reacs.elmt_k14 = Params.elmt_k14;
        Reacs.elmt_TGFbR = elmt_c.elmt_TGFbR;
        Reacs.elmt_k13 = Params.elmt_k13;
        Reacs.elmt_Smad_N = elmt_n.elmt_Smad_N;
        Reacs.elmt_k12 = Params.elmt_k12;
        Reacs.elmt_k11 = Params.elmt_k11;
        Reacs.elmt_k10 = Params.elmt_k10;
        Reacs.elmt_Smad_P = elmt_c.elmt_Smad_P;
        Reacs.elmt_I_Smad = elmt_c.elmt_I_Smad;
        Reacs.elmt_k1 = Params.elmt_k1;
        Reacs.elmt_Smad_P_N = elmt_n.elmt_Smad_P_N;
        Reacs.elmt_k19 = Params.elmt_k19;
        Reacs.elmt_k18 = Params.elmt_k18;
        Reacs.elmt_Smad_P_CoSmad = elmt_c.elmt_Smad_P_CoSmad;
        Reacs.elmt_k17 = Params.elmt_k17;
        Reacs.elmt_k8 = Params.elmt_k8;
        Reacs.elmt_Smad_P_Smad_P = elmt_c.elmt_Smad_P_Smad_P;
        Reacs.elmt_k9 = Params.elmt_k9;
        Reacs.elmt_k6 = Params.elmt_k6;
        Reacs.elmt_k7 = Params.elmt_k7;
        Reacs.elmt_TGFb_TGFbR = elmt_c.elmt_TGFb_TGFbR;
        Reacs.elmt_k4 = Params.elmt_k4;
        Reacs.elmt_k5 = Params.elmt_k5;
        Reacs.elmt_k2 = Params.elmt_k2;
        Reacs.elmt_Smad_P_CoSmad_N = elmt_n.elmt_Smad_P_CoSmad_N;
        Reacs.elmt_k3 = Params.elmt_k3;
        Reacs.elmt_Smad = elmt_c.elmt_Smad;
        Reacs.elmt_TGFb_TGFbR_P = elmt_c.elmt_TGFb_TGFbR_P;
        Reacs.elmt_TGFb = elmt_extracellular.elmt_TGFb;
        Reacs.elmt_Smad_P_Smad_P_N = elmt_n.elmt_Smad_P_Smad_P_N;
        elmt_c.elmt_product30 = Reacs.elmt_product30;
        elmt_c.elmt_r28 = Reacs.elmt_r28;
        elmt_c.elmt_r7 = Reacs.elmt_r7;
        elmt_c.elmt_r8 = Reacs.elmt_r8;
        elmt_c.elmt_r27 = Reacs.elmt_r27;
        elmt_c.elmt_r5 = Reacs.elmt_r5;
        elmt_c.elmt_reactant41 = Reacs.elmt_reactant41;
        elmt_c.elmt_r26 = Reacs.elmt_r26;
        elmt_c.elmt_r6 = Reacs.elmt_r6;
        elmt_c.elmt_product34 = Reacs.elmt_product34;
        elmt_c.elmt_r3 = Reacs.elmt_r3;
        elmt_c.elmt_r4 = Reacs.elmt_r4;
        elmt_c.elmt_r1 = Reacs.elmt_r1;
        elmt_c.elmt_r2 = Reacs.elmt_r2;
        elmt_c.elmt_r9 = Reacs.elmt_r9;
        elmt_c.elmt_r29 = Reacs.elmt_r29;
        elmt_c.elmt_product27 = Reacs.elmt_product27;
        elmt_c.elmt_reactant9 = Reacs.elmt_reactant9;
        elmt_c.elmt_product24 = Reacs.elmt_product24;
        elmt_c.elmt_product29 = Reacs.elmt_product29;
        elmt_c.elmt_product40 = Reacs.elmt_product40;
        elmt_c.elmt_reactant58 = Reacs.elmt_reactant58;
        elmt_c.elmt_reactant15 = Reacs.elmt_reactant15;
        elmt_c.elmt_reactant17 = Reacs.elmt_reactant17;
        elmt_c.elmt_reactant10 = Reacs.elmt_reactant10;
        elmt_c.elmt_reactant12 = Reacs.elmt_reactant12;
        elmt_c.elmt_product11 = Reacs.elmt_product11;
        elmt_c.elmt_reactant60 = Reacs.elmt_reactant60;
        elmt_c.elmt_reactant25 = Reacs.elmt_reactant25;
        elmt_c.elmt_reactant26 = Reacs.elmt_reactant26;
        elmt_c.elmt_reactant28 = Reacs.elmt_reactant28;
        elmt_c.elmt_reactant21 = Reacs.elmt_reactant21;
        elmt_c.elmt_reactant23 = Reacs.elmt_reactant23;
        elmt_c.elmt_reactant2 = Reacs.elmt_reactant2;
        elmt_c.elmt_r17 = Reacs.elmt_r17;
        elmt_c.elmt_r16 = Reacs.elmt_r16;
        elmt_c.elmt_product8 = Reacs.elmt_product8;
        elmt_c.elmt_r15 = Reacs.elmt_r15;
        elmt_c.elmt_r14 = Reacs.elmt_r14;
        elmt_c.elmt_reactant31 = Reacs.elmt_reactant31;
        elmt_c.elmt_product6 = Reacs.elmt_product6;
        elmt_c.elmt_r13 = Reacs.elmt_r13;
        elmt_c.elmt_r12 = Reacs.elmt_r12;
        elmt_c.elmt_product22 = Reacs.elmt_product22;
        elmt_c.elmt_reactant5 = Reacs.elmt_reactant5;
        elmt_c.elmt_r11 = Reacs.elmt_r11;
        elmt_c.elmt_product20 = Reacs.elmt_product20;
        elmt_c.elmt_reactant7 = Reacs.elmt_reactant7;
        elmt_c.elmt_r10 = Reacs.elmt_r10;
        elmt_c.elmt_product1 = Reacs.elmt_product1;
        elmt_c.elmt_reactant37 = Reacs.elmt_reactant37;
        elmt_c.elmt_product4 = Reacs.elmt_product4;
        elmt_c.elmt_r19 = Reacs.elmt_r19;
        elmt_c.elmt_reactant0 = Reacs.elmt_reactant0;
        elmt_c.elmt_reactant35 = Reacs.elmt_reactant35;
        elmt_c.elmt_r18 = Reacs.elmt_r18;
        elmt_c.elmt_product16 = Reacs.elmt_product16;
        elmt_c.elmt_product59 = Reacs.elmt_product59;
        elmt_c.elmt_product14 = Reacs.elmt_product14;
        elmt_c.elmt_product57 = Reacs.elmt_product57;
        elmt_c.elmt_product13 = Reacs.elmt_product13;
        elmt_n.elmt_r8 = Reacs.elmt_r8;
        elmt_n.elmt_product51 = Reacs.elmt_product51;
        elmt_n.elmt_r26 = Reacs.elmt_r26;
        elmt_n.elmt_r25 = Reacs.elmt_r25;
        elmt_n.elmt_r24 = Reacs.elmt_r24;
        elmt_n.elmt_r23 = Reacs.elmt_r23;
        elmt_n.elmt_product55 = Reacs.elmt_product55;
        elmt_n.elmt_r22 = Reacs.elmt_r22;
        elmt_n.elmt_product54 = Reacs.elmt_product54;
        elmt_n.elmt_product32 = Reacs.elmt_product32;
        elmt_n.elmt_product53 = Reacs.elmt_product53;
        elmt_n.elmt_r21 = Reacs.elmt_r21;
        elmt_n.elmt_reactant47 = Reacs.elmt_reactant47;
        elmt_n.elmt_reactant49 = Reacs.elmt_reactant49;
        elmt_n.elmt_reactant43 = Reacs.elmt_reactant43;
        elmt_n.elmt_reactant45 = Reacs.elmt_reactant45;
        elmt_n.elmt_r9 = Reacs.elmt_r9;
        elmt_n.elmt_reactant19 = Reacs.elmt_reactant19;
        elmt_n.elmt_product48 = Reacs.elmt_product48;
        elmt_n.elmt_product46 = Reacs.elmt_product46;
        elmt_n.elmt_r17 = Reacs.elmt_r17;
        elmt_n.elmt_reactant50 = Reacs.elmt_reactant50;
        elmt_n.elmt_r16 = Reacs.elmt_r16;
        elmt_n.elmt_r15 = Reacs.elmt_r15;
        elmt_n.elmt_reactant52 = Reacs.elmt_reactant52;
        elmt_n.elmt_r14 = Reacs.elmt_r14;
        elmt_n.elmt_product44 = Reacs.elmt_product44;
        elmt_n.elmt_product42 = Reacs.elmt_product42;
        elmt_n.elmt_reactant39 = Reacs.elmt_reactant39;
        elmt_n.elmt_reactant33 = Reacs.elmt_reactant33;
        elmt_n.elmt_reactant56 = Reacs.elmt_reactant56;
        elmt_n.elmt_r19 = Reacs.elmt_r19;
        elmt_n.elmt_r18 = Reacs.elmt_r18;
        elmt_n.elmt_product38 = Reacs.elmt_product38;
        elmt_n.elmt_r20 = Reacs.elmt_r20;
        elmt_n.elmt_product36 = Reacs.elmt_product36;
        elmt_n.elmt_product18 = Reacs.elmt_product18;

end Celli_re2011___Plasticity_of_TGF___Signalling;
