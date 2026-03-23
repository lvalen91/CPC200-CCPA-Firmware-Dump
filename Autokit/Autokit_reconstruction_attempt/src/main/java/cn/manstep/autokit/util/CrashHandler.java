/* IDENTIFIED - Uncaught exception handler with crash reporting
 * Original: q.java
 * Implements: Thread.UncaughtExceptionHandler
 * Maintains Activity stack, uploads crash reports via HTTP POST
 * Kills process after crash handling, collects device/build info
 * SUGGESTED PACKAGE: cn.manstep.autokit.util
 */
package cn.manstep.autokit.util;
