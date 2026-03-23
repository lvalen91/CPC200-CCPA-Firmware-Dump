/* IDENTIFIED - iPhone mirroring interface (AirPlay-based)
 * Original: n0/a
 * Large class (~900 lines) with MediaCodec H.264 decoding, OpenGL rendering,
 * SurfaceTexture management, float window support (FloatWindowService),
 * render thread with EGL context, UUID generation from hardware IDs
 * Inner classes: d (FloatWindow manager), e (status listener interface),
 * g (render handler), h (render thread), c (AVC decoder), f (main handler)
 * Uses "video/avc" codec, GLES20 rendering, SurfaceHolder callbacks
 * SUGGESTED PACKAGE: cn.manstep.autokit.mirror — core iPhone mirroring implementation
 */
package cn.manstep.autokit.protocol;
