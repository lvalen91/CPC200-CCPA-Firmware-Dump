/* IDENTIFIED - OES external texture shader with image adjustment uniforms
 * Original: w0/b
 * Extends: w0.a (GlShaderBase)
 * GLSL shader with uniforms: saturation, brightness, exposure, contrast
 * Vertex shader: passes texture coordinates through matrix transform
 * Fragment shader: applies saturation (luminance weighting), brightness,
 * exposure (power of 2), and contrast adjustments to OES texture
 * Chinese comment in shader: "纹理颜色" (texture color), "饱和度" (saturation),
 * "亮度" (brightness), "曝光度" (exposure), "对比度" (contrast)
 * SUGGESTED PACKAGE: cn.manstep.autokit.render
 */
package cn.manstep.autokit.video.gl;
