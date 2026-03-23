/* IDENTIFIED - TextureView-based OpenGL renderer with EGL context management
 * Original: w0/c
 * Implements: SurfaceTexture.OnFrameAvailableListener
 * TAG "TextureViewRenderer"
 * Creates EGL context on a HandlerThread, renders OES texture to TextureView
 * Uses w0.b (OESTextureShader) for rendering with saturation/brightness/exposure/contrast
 * Methods: e() init with TextureView, g() create SurfaceTexture, d() drawFrame, f() initEGL
 * SUGGESTED PACKAGE: cn.manstep.autokit.render
 */
package cn.manstep.autokit.video.gl;
