// configuration data for other SSDTs in this pack (NUC5)

DefinitionBlock("", "SSDT", 2, "hack", "RM-NUC5", 0)
{
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove

        // AUDL: Audio Layout
        //
        // The value here will be used to inject layout-id for HDEF and HDAU
        // If set to Ones, no audio injection will be done.
        Name(AUDL, 1)

        // FAKH: Fake HDMI Aduio
        //
        // 0: Disable spoofing of HDEF for FakePCIID_Intel_HDMI_Audio.kext
        // 1: Allow spoofing of HDEF for FakePCIID_Intel_HDMI_Audio.kext
        Name(FAKH, 1)
    }

    #include "SSDT-PluginType1.dsl"
    #include "SSDT-XOSI.dsl"
    #include "SSDT-IGPU.dsl"
    #include "SSDT-USB.dsl"
    #include "SSDT-XHC.dsl"
    #include "SSDT-SATA.dsl"
    #include "SSDT-NUCHDA.dsl"
    #include "SSDT-HDEF.dsl"
    #include "SSDT-HDAU.dsl"
    #include "SSDT-LPC.dsl"
    #include "SSDT-Disable_EHCI.dsl"
    #include "SSDT-EC.dsl"
}
//EOF
