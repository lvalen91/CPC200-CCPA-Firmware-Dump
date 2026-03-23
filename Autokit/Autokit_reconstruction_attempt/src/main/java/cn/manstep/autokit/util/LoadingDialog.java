/**
 * LoadingDialog.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.g
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * A custom Dialog that shows a loading indicator with a text message.
 * Supports auto-dismiss after a timeout (3 seconds default or custom).
 * Provides a Builder pattern for configuration.
 */
package cn.manstep.autokit.util;

import android.app.Dialog;
import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;

public class LoadingDialog /* was: 'util.g' */ extends Dialog {

    /**
     * Auto-dismiss runnable (3s timeout).
     * /* was: inner class 'a' */
     */
    class AutoDismissRunnable /* was: 'a' */ implements Runnable {
        @Override
        public void run() {
            LoadingDialog.this.cancel();
        }
    }

    /**
     * Auto-dismiss runnable (custom timeout).
     * /* was: inner class 'b' */
     */
    class CustomDismissRunnable /* was: 'b' */ implements Runnable {
        @Override
        public void run() {
            LoadingDialog.this.cancel();
        }
    }

    /**
     * Builder for constructing a LoadingDialog.
     * /* was: inner class 'c' */
     */
    public static class Builder /* was: 'c' */ {
        private Context context /* was: 'a' */;
        private String message /* was: 'f1879b' */;
        private boolean cancelable /* was: 'f1880c' */ = false;
        private boolean canceledOnTouchOutside /* was: 'f1881d' */ = false;

        public Builder(Context context) {
            this.context = context;
        }

        /** Set canceledOnTouchOutside. /* was: 'a' */ */
        public Builder setCanceledOnTouchOutside(/* was: 'a' */ boolean value) {
            this.canceledOnTouchOutside = value;
            return this;
        }

        /** Set cancelable. /* was: 'b' */ */
        public Builder setCancelable(/* was: 'b' */ boolean value) {
            this.cancelable = value;
            return this;
        }

        /** Set the message text. /* was: 'c' */ */
        public Builder setMessage(/* was: 'c' */ String msg) {
            this.message = msg;
            return this;
        }

        /** Build and return the LoadingDialog. /* was: 'd' */ */
        public LoadingDialog build(/* was: 'd' */) {
            View view = LayoutInflater.from(this.context).inflate(2131492905, (ViewGroup) null);
            ((ProgressBar) view.findViewById(2131296724)).setVisibility(8);
            ((TextView) view.findViewById(2131296869)).setText(this.message);
            LoadingDialog dialog = new LoadingDialog(this.context, 2131755275);
            dialog.setContentView(view);
            dialog.setCancelable(this.cancelable);
            dialog.setCanceledOnTouchOutside(this.canceledOnTouchOutside);
            return dialog;
        }
    }

    public LoadingDialog(Context context, int themeResId) {
        super(context, themeResId);
    }

    /**
     * Show a timed loading dialog from a string resource.
     * /* was: 'a(Context, int, int)' */
     */
    public static void showTimed(/* was: 'a' */ Context context, int msgResId, int timeoutMs) {
        if (context != null) {
            Builder builder = new Builder(context);
            builder.setMessage(context.getResources().getString(msgResId));
            builder.setCancelable(true);
            builder.setCanceledOnTouchOutside(true);
            builder.build().showWithCustomTimeout(true, timeoutMs);
        }
    }

    /**
     * Show a default-timed loading dialog.
     * /* was: 'd(Context, int)' (static) */
     */
    public static void showDefault(/* was: 'd' */ Context context, int msgResId) {
        if (context != null) {
            Builder builder = new Builder(context);
            builder.setMessage(context.getResources().getString(msgResId));
            builder.setCancelable(true);
            builder.setCanceledOnTouchOutside(true);
            builder.build().show(true);
        }
    }

    /**
     * Show the dialog with optional 3-second auto-dismiss.
     * /* was: 'b' */
     */
    public void show(/* was: 'b' */ boolean autoDismiss) {
        super.show();
        if (autoDismiss) {
            new Handler().postDelayed(new AutoDismissRunnable(), 3000L);
        }
    }

    /**
     * Show the dialog with a custom auto-dismiss timeout.
     * /* was: 'c' */
     */
    public void showWithCustomTimeout(/* was: 'c' */ boolean autoDismiss, int timeoutMs) {
        super.show();
        if (autoDismiss) {
            new Handler().postDelayed(new CustomDismissRunnable(), timeoutMs);
        }
    }

    @Override
    public void show() {
        super.show();
    }
}
