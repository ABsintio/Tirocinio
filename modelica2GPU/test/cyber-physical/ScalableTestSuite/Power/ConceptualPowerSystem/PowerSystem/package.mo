within ConceptualPowerSystem;
package PowerSystem
	import SI=Modelica.SIunits;
	type Power = SI.Power(nominal = 1e9);
    type AngularVelocity = SI.AngularVelocity(nominal = 300);
    type Frequency = SI.Frequency(nominal = 50);
end PowerSystem;