/**
 * BoxInfo.java
 *
 * Firmware version and capabilities data object for the CPC200/AutoKit box.
 * Singleton that stores device identity (UUID, manufacturer, firmware version),
 * connected phone info (model, OS version, link type), hardware details (CPU temp,
 * WiFi channel, VID/PID), and HiCar support flag.
 *
 * Populated from JSON payloads received over the USB protocol (CMD_BOX_INFO).
 * Contains a static iPhone model identifier map (iPhone5,1 -> "iPhone 5 (GSM)", etc.).
 *
 * Original: BoxInterface/c.java
 */
package cn.manstep.autokit.protocol;

import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BoxInfo {
    /** Static map of Apple device identifiers to human-readable names. */
    private static final Map<String, String> IPHONE_MODEL_MAP;             /* was: field 'w' */
    private static volatile BoxInfo instance;                               /* was: field 'x' */

    private String model;                /* was: field 'f' -- productType/model string */
    private String type;                 /* was: field 'g' -- device type suffix */
    private String hwVersion;            /* was: field 'i' -- hardware version */
    private String linkType;             /* was: field 'j' -- MDLinkType */
    private String phoneModel;           /* was: field 'k' -- connected phone model */
    private String phoneOsVersion;       /* was: field 'l' -- connected phone OS version */
    private String linkVersion;          /* was: field 'm' -- MDLinkVersion */
    private int cpuTemp;                 /* was: field 'n' -- CPU temperature */
    private String oemName;              /* was: field 'o' -- OEM name */
    private int wiFiChannel;             /* was: field 'p' -- WiFi channel */
    private int vid;                     /* was: field 'q' -- USB vendor ID */
    private int pid;                     /* was: field 'r' -- USB product ID */
    private String userCode;             /* was: field 's' -- customer/user code */
    private String phoneName;            /* was: field 't' -- Bluetooth phone name */
    private String wifiChannelList;      /* was: field 'u' -- available WiFi channels */
    private String uuid = BuildConfig.FLAVOR;                              /* was: field 'a' */
    private String manufacturer = BuildConfig.FLAVOR;                      /* was: field 'f1434b' (renamed from 'b') */
    private String firmwareVersion = BuildConfig.FLAVOR;                   /* was: field 'f1435c' (renamed from 'c') */
    private String firmwareName = BuildConfig.FLAVOR;                      /* was: field 'f1436d' (renamed from 'd') */
    private int wifiSupport = 0;                                           /* was: field 'e' */
    private boolean isSupportHiCar = false;                                /* was: field 'h' */
    private Map<String, cn.manstep.phonemirrorBox.g0.d> deviceList = new ConcurrentHashMap();  /* was: field 'v' */

    static {
        HashMap map = new HashMap();
        IPHONE_MODEL_MAP = map;
        map.put("iPhone5,1", "iPhone 5 (GSM)");
        IPHONE_MODEL_MAP.put("iPhone5,2", "iPhone 5 (GSM+CDMA)");
        IPHONE_MODEL_MAP.put("iPhone5,3", "iPhone 5C (GSM)");
        IPHONE_MODEL_MAP.put("iPhone5,4", "iPhone 5C (Global)");
        IPHONE_MODEL_MAP.put("iPhone6,1", "iPhone 5S (GSM)");
        IPHONE_MODEL_MAP.put("iPhone6,2", "iPhone 5S (Global)");
        IPHONE_MODEL_MAP.put("iPhone7,1", "iPhone 6 Plus");
        IPHONE_MODEL_MAP.put("iPhone7,2", "iPhone 6");
        IPHONE_MODEL_MAP.put("iPhone8,1", "iPhone 6s");
        IPHONE_MODEL_MAP.put("iPhone8,2", "iPhone 6s Plus");
        IPHONE_MODEL_MAP.put("iPhone8,4", "iPhone SE (GSM)");
        IPHONE_MODEL_MAP.put("iPhone9,1", "iPhone 7");
        IPHONE_MODEL_MAP.put("iPhone9,2", "iPhone 7 Plus");
        IPHONE_MODEL_MAP.put("iPhone9,3", "iPhone 7");
        IPHONE_MODEL_MAP.put("iPhone9,4", "iPhone 7 Plus");
        IPHONE_MODEL_MAP.put("iPhone10,1", "iPhone 8");
        IPHONE_MODEL_MAP.put("iPhone10,2", "iPhone 8 Plus");
        IPHONE_MODEL_MAP.put("iPhone10,3", "iPhone X Global");
        IPHONE_MODEL_MAP.put("iPhone10,4", "iPhone 8");
        IPHONE_MODEL_MAP.put("iPhone10,5", "iPhone 8 Plus");
        IPHONE_MODEL_MAP.put("iPhone10,6", "iPhone X GSM");
        IPHONE_MODEL_MAP.put("iPhone11,2", "iPhone XS");
        IPHONE_MODEL_MAP.put("iPhone11,4", "iPhone XS Max");
        IPHONE_MODEL_MAP.put("iPhone11,6", "iPhone XS Max Global");
        IPHONE_MODEL_MAP.put("iPhone11,8", "iPhone XR");
        IPHONE_MODEL_MAP.put("iPhone12,1", "iPhone 11");
        IPHONE_MODEL_MAP.put("iPhone12,3", "iPhone 11 Pro");
        IPHONE_MODEL_MAP.put("iPhone12,5", "iPhone 11 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone12,8", "iPhone SE 2nd Gen");
        IPHONE_MODEL_MAP.put("iPhone13,1", "iPhone 12 Mini");
        IPHONE_MODEL_MAP.put("iPhone13,2", "iPhone 12");
        IPHONE_MODEL_MAP.put("iPhone13,3", "iPhone 12 Pro");
        IPHONE_MODEL_MAP.put("iPhone13,4", "iPhone 12 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone14,2", "iPhone 13 Pro");
        IPHONE_MODEL_MAP.put("iPhone14,3", "iPhone 13 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone14,4", "iPhone 13 Mini");
        IPHONE_MODEL_MAP.put("iPhone14,5", "iPhone 13");
        IPHONE_MODEL_MAP.put("iPhone14,6", "iPhone SE 3rd Gen");
        IPHONE_MODEL_MAP.put("iPhone14,7", "iPhone 14");
        IPHONE_MODEL_MAP.put("iPhone14,8", "iPhone 14 Plus");
        IPHONE_MODEL_MAP.put("iPhone15,2", "iPhone 14 Pro");
        IPHONE_MODEL_MAP.put("iPhone15,3", "iPhone 14 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone15,4", "iPhone 15");
        IPHONE_MODEL_MAP.put("iPhone15,5", "iPhone 15 Plus");
        IPHONE_MODEL_MAP.put("iPhone16,1", "iPhone 15 Pro");
        IPHONE_MODEL_MAP.put("iPhone16,2", "iPhone 15 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone17,1", "iPhone 16 Pro");
        IPHONE_MODEL_MAP.put("iPhone17,2", "iPhone 16 Pro Max");
        IPHONE_MODEL_MAP.put("iPhone17,3", "iPhone 16");
        IPHONE_MODEL_MAP.put("iPhone17,4", "iPhone 16 Plus");
    }

    private BoxInfo() {
        resetAll();  /* was: u() */
    }

    /** Singleton accessor. was: method 'e()' */
    public static BoxInfo getInstance() {
        if (instance == null) {
            synchronized (BoxInfo.class) {
                if (instance == null) {
                    instance = new BoxInfo();
                }
            }
        }
        return instance;
    }

    /** Set WiFi support flag. was: method 'A(boolean)' */
    public void setWifiSupport(boolean z) {
        this.wifiSupport = z ? 1 : 0;
    }

    /** Returns a composite info string for display. was: method 'a()' */
    public String getInfoString() {
        return this.wifiSupport + BuildConfig.FLAVOR + this.isSupportHiCar + "\n"
                + String.format(Locale.CHINA, "0x%04X0x%04X", Integer.valueOf(this.vid), Integer.valueOf(this.pid)) + "\n"
                + this.firmwareVersion.replace(".", BuildConfig.FLAVOR) + this.type + "\n"
                + this.manufacturer + this.model + "\n"
                + this.uuid;
    }

    /** Returns CPU temperature. was: method 'b()' */
    public int getCpuTemp() {
        return this.cpuTemp;
    }

    /** Returns firmware file name. was: method 'c()' */
    public String getFirmwareName() {
        return this.firmwareName;
    }

    /** Returns hardware version string. was: method 'd()' */
    public String getHwVersion() {
        return this.hwVersion;
    }

    /** Returns link type (e.g., "USB", "WiFi"). was: method 'f()' */
    public String getLinkType() {
        return this.linkType;
    }

    /** Returns link version. was: method 'g()' */
    public String getLinkVersion() {
        return this.linkVersion;
    }

    /** Returns manufacturer. was: method 'h()' */
    public String getManufacturer() {
        return this.manufacturer;
    }

    /** Returns product model. was: method 'i()' */
    public String getModel() {
        return this.model;
    }

    /** Returns connected phone model name. was: method 'j()' */
    public String getPhoneModel() {
        return this.phoneModel;
    }

    /** Returns Bluetooth/phone name. was: method 'k()' */
    public String getPhoneName() {
        return this.phoneName;
    }

    /** Returns connected phone OS version. was: method 'l()' */
    public String getPhoneOsVersion() {
        return this.phoneOsVersion;
    }

    /** Returns device type suffix. was: method 'm()' */
    public String getType() {
        return this.type;
    }

    /** Returns user/customer code with newlines stripped. was: method 'n()' */
    public String getUserCode() {
        return this.userCode.replace("\n", BuildConfig.FLAVOR);
    }

    /** Returns UUID. was: method 'o()' */
    public String getUuid() {
        return this.uuid;
    }

    /** Returns firmware version string. was: method 'p()' */
    public String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    /** Returns formatted VID/PID string. was: method 'q()' */
    public String getVidPidString() {
        return String.format(Locale.CHINA, "%d(0x%04X),%d(0x%04X)",
                Integer.valueOf(this.vid), Integer.valueOf(this.vid),
                Integer.valueOf(this.pid), Integer.valueOf(this.pid));
    }

    /** Returns WiFi channel. was: method 'r()' */
    public int getWiFiChannel() {
        return this.wiFiChannel;
    }

    /** Returns WiFi channel list string. was: method 's()' */
    public String getWifiChannelList() {
        return this.wifiChannelList;
    }

    /** Check if PID has changed (for unauthorized device detection). was: method 't(int, int[])' */
    public boolean isPidChanged(int expectedPid, int[] excludedPids) {
        if (expectedPid <= 0 || this.pid <= 0) {
            return false;
        }
        for (int excluded : excludedPids) {
            if (this.pid == excluded) {
                return false;
            }
        }
        return this.pid != expectedPid;
    }

    public String toString() {
        return "BoxInfo{uuid='" + this.uuid + "', mfd='" + this.manufacturer + "', ver='" + this.firmwareVersion
                + "', fwName='" + this.firmwareName + "', wifi=" + this.wifiSupport + ", model='" + this.model
                + "', type='" + this.type + "', isSupportHiCar=" + this.isSupportHiCar + ", hwVersion='" + this.hwVersion
                + "', linkType='" + this.linkType + "', phoneModel='" + this.phoneModel + "', phoneOsVersion='"
                + this.phoneOsVersion + "', linkVersion='" + this.linkVersion + "', cpuTemp=" + this.cpuTemp
                + ", oemName='" + this.oemName + "', wiFiChannel=" + this.wiFiChannel + ", vid=" + this.vid
                + ", pid=" + this.pid + ", userCode='" + this.userCode + "', phoneName='" + this.phoneName
                + "', wifiChannelList='" + this.wifiChannelList + "'}";
    }

    /** Reset all fields to defaults. was: method 'u()' */
    public void resetAll() {
        this.uuid = BuildConfig.FLAVOR;
        this.manufacturer = BuildConfig.FLAVOR;
        this.firmwareVersion = BuildConfig.FLAVOR;
        this.firmwareName = BuildConfig.FLAVOR;
        this.wifiSupport = 0;
        this.model = BuildConfig.FLAVOR;
        this.isSupportHiCar = false;
        this.type = BuildConfig.FLAVOR;
        this.oemName = BuildConfig.FLAVOR;
        this.hwVersion = BuildConfig.FLAVOR;
        this.wiFiChannel = 0;
        this.wifiChannelList = BuildConfig.FLAVOR;
        this.cpuTemp = 0;
        this.userCode = BuildConfig.FLAVOR;
        this.deviceList.clear();
        resetPhoneInfo();  /* was: v() */
    }

    /** Reset phone-specific fields. was: method 'v()' */
    public void resetPhoneInfo() {
        this.phoneModel = BuildConfig.FLAVOR;
        this.phoneOsVersion = BuildConfig.FLAVOR;
        this.linkType = BuildConfig.FLAVOR;
        this.linkVersion = BuildConfig.FLAVOR;
    }

    /** Parse JSON info payload from the box. was: method 'w(String)' */
    public void parseFromJson(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject json = new JSONObject(str);
            if (json.has("uuid")) {
                this.uuid = json.getString("uuid");
                this.manufacturer = json.getString("MFD");
            }
            if (json.has("hwVersion")) {
                this.hwVersion = json.getString("hwVersion");
                this.wiFiChannel = json.getInt("WiFiChannel");
                this.oemName = json.getString("OemName");
                if (json.has("CusCode")) {
                    this.userCode = json.getString("CusCode");
                }
            }
            if (json.has("MDLinkType")) {
                this.linkType = json.getString("MDLinkType");
                this.linkVersion = json.getString("MDLinkVersion");
                String mdModel = json.getString("MDModel");
                if (mdModel.startsWith("iPhone")) {
                    this.phoneModel = IPHONE_MODEL_MAP.get(mdModel);
                }
                if (TextUtils.isEmpty(this.phoneModel)) {
                    this.phoneModel = mdModel;
                }
                this.phoneOsVersion = json.getString("MDOSVersion");
            }
            if (json.has("cpuTemp")) {
                this.cpuTemp = json.getInt("cpuTemp");
            }
            if (json.has("fileName")) {
                this.firmwareName = json.getString("fileName");
            } else if (json.has("productType")) {
                String productType = json.getString("productType");
                this.model = productType;
                if ("Auto_Box".equals(productType)) {
                    this.firmwareName = "Auto_Box_Update.img";
                } else if ("A15HW".equals(productType)) {
                    this.firmwareName = "A15H_Update.img";
                }
            }
            if (json.has("HiCar")) {
                this.isSupportHiCar = (json.getInt("HiCar") == 1);
            }
            if (json.has("btName")) {
                this.phoneName = json.getString("btName");
            }
            if (json.has("ChannelList")) {
                this.wifiChannelList = json.getString("ChannelList");
            }
            if (json.has("DevList")) {
                JSONArray devList = json.getJSONArray("DevList");
                for (int i = 0; i < devList.length(); i++) {
                    JSONObject dev = devList.getJSONObject(i);
                    String id = dev.getString("id");
                    String name = dev.getString("name");
                    String devType = BuildConfig.FLAVOR;
                    if (dev.has("type")) {
                        devType = dev.getString("type");
                    }
                    this.deviceList.put(id, new cn.manstep.phonemirrorBox.g0.d(id, name, devType));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /** Parse firmware version string (first 15 chars + type suffix). was: method 'x(String)' */
    public void parseFirmwareVersion(String str) {
        if (str.length() > 15) {
            this.type = str.substring(str.length() - 1);
            str = str.substring(0, 15);
        }
        this.firmwareVersion = str;
    }

    /** Set VID and PID. was: method 'y(int, int)' */
    public void setVidPid(int vid, int pid) {
        this.vid = vid;
        this.pid = pid;
    }

    /** Set WiFi channel. was: method 'z(int)' */
    public void setWiFiChannel(int channel) {
        this.wiFiChannel = channel;
    }
}
