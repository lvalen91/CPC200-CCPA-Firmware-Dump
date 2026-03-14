package okio;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    Buffer buffer();

    boolean exhausted();

    long indexOf(byte b2);

    long indexOf(byte b2, long j);

    long indexOf(byte b2, long j, long j2);

    long indexOf(ByteString byteString);

    long indexOf(ByteString byteString, long j);

    long indexOfElement(ByteString byteString);

    long indexOfElement(ByteString byteString, long j);

    InputStream inputStream();

    boolean rangeEquals(long j, ByteString byteString);

    boolean rangeEquals(long j, ByteString byteString, int i, int i2);

    int read(byte[] bArr);

    int read(byte[] bArr, int i, int i2);

    long readAll(Sink sink);

    byte readByte();

    byte[] readByteArray();

    byte[] readByteArray(long j);

    ByteString readByteString();

    ByteString readByteString(long j);

    long readDecimalLong();

    void readFully(Buffer buffer, long j);

    void readFully(byte[] bArr);

    long readHexadecimalUnsignedLong();

    int readInt();

    int readIntLe();

    long readLong();

    long readLongLe();

    short readShort();

    short readShortLe();

    String readString(long j, Charset charset);

    String readString(Charset charset);

    String readUtf8();

    String readUtf8(long j);

    int readUtf8CodePoint();

    @Nullable
    String readUtf8Line();

    String readUtf8LineStrict();

    String readUtf8LineStrict(long j);

    boolean request(long j);

    void require(long j);

    int select(Options options);

    void skip(long j);
}
