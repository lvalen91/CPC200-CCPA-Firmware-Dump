package cn.manstep.autokit;

/**
 * MyFileProvider.java - Content provider for sharing files and querying box status.
 *
 * <p>Provides two URI patterns:</p>
 * <ul>
 *   <li>{authority}/tmp_cache_path/* (match=1) - serves cached image files (image/*)</li>
 *   <li>{authority}/box (match=2) - returns box connection status as text/plain</li>
 * </ul>
 *
 * <h3>Authority:</h3>
 * <p>{packageName}.myfileprovider</p>
 *
 * <h3>Box status query:</h3>
 * <p>Returns a MatrixCursor with single column "data" containing "1" if box
 * is connected (BoxInterface.d.i()), "0" otherwise. External apps can query
 * this to check if AutoKit has an active box connection.</p>
 *
 * <h3>File serving:</h3>
 * <p>Opens files from the app's cache directory. URI path format:
 * /tmp_cache_path/{filename} -> opens {cacheDir}/{filename}</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.MyFileProvider</p>
 */
public class MyFileProvider extends android.content.ContentProvider {
    // Handles authority with optional "@" prefix stripping for compatibility
    // delete/insert/update throw UnsupportedOperationException
}
