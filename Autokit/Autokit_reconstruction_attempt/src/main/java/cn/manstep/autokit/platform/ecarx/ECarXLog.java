package cn.manstep.autokit.platform.ecarx;

/**
 * ECarXLog.java - ECarX SDK logging adapter.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as ecarx.b, this class implements the ECarX SDK's
 * ILog interface and forwards all log calls to the AutoKit logging system
 * (cn.manstep.phonemirrorBox.util.s).</p>
 *
 * <h3>Log level mapping:</h3>
 * <pre>
 *   d(tag, msg) -> Logger.debug(tag, msg)
 *   e(tag, msg) -> Logger.error(tag, msg)
 *   i(tag, msg) -> Logger.info(tag, msg)
 *   v(tag, msg) -> Logger.verbose(tag, msg)
 *   w(tag, msg) -> Logger.warning(tag, msg)
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ecarx.b</p>
 */
public class ECarXLog /* implements com.ecarx.sdk.log.ILog */ {
    // Forwards SDK log calls to AutoKit's logging utility
}
