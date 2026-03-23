/* IDENTIFIED - Singleton manager that loads and dispatches to all third-party SDKs
 * Original: u0/c
 * Implements: u0.b (ThirdPartySdkCallback)
 * Loads via reflection: AvdUtil, NzUtil, YqUtil, YqBtUtil, HsaeAutoSdk, AcoUtil, HySdk
 * TAG "ThirdSdkUtil"
 * Delegates all dashboard/call/media/nav data to all loaded SDK adapters
 * SUGGESTED PACKAGE: cn.manstep.autokit.third
 */
package cn.manstep.autokit.platform.vendor;
