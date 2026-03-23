/* IDENTIFIED - ViewModel for main settings page
 * Original: x0/i
 * Extends: x0.c (ContextAwareViewModelBase)
 * Manages: UseOpenGLRender, IsAutoPlayMusic, IsTextureView, BgKeyValid, ChargeMode,
 * IsTurnDownMusic, BG_CONN, MicGain, BootDelay, mediaDelay, HideSysNavBar,
 * AudioTransferMode, UseVolumeKeySwitchMusic, CallAudioAttr, UseBTPhone
 * Contains MicTypeViewModel (x0.b) and DisplaySettingsViewModel (x0.f) as children
 * Also DeviceSettingsViewModel (x0.m) for BT/WiFi name management
 * Handles app restart via kill process, font size dialog, audio debug navigation
 * SUGGESTED PACKAGE: cn.manstep.autokit.viewmodel
 */
package cn.manstep.autokit.ui.viewmodel;
