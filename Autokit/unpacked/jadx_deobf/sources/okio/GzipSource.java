package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class GzipSource implements Source {
    private static final byte FCOMMENT = 4;
    private static final byte FEXTRA = 2;
    private static final byte FHCRC = 1;
    private static final byte FNAME = 3;
    private static final byte SECTION_BODY = 1;
    private static final byte SECTION_DONE = 3;
    private static final byte SECTION_HEADER = 0;
    private static final byte SECTION_TRAILER = 2;
    private final Inflater inflater;
    private final InflaterSource inflaterSource;
    private final BufferedSource source;
    private int section = 0;
    private final CRC32 crc = new CRC32();

    public GzipSource(Source source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        this.inflater = new Inflater(true);
        BufferedSource bufferedSourceBuffer = Okio.buffer(source);
        this.source = bufferedSourceBuffer;
        this.inflaterSource = new InflaterSource(bufferedSourceBuffer, this.inflater);
    }

    private void checkEqual(String str, int i, int i2) throws IOException {
        if (i2 != i) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private void consumeHeader() throws IOException {
        this.source.require(10L);
        byte b2 = this.source.buffer().getByte(3L);
        boolean z = ((b2 >> 1) & 1) == 1;
        if (z) {
            updateCrc(this.source.buffer(), 0L, 10L);
        }
        checkEqual("ID1ID2", 8075, this.source.readShort());
        this.source.skip(8L);
        if (((b2 >> 2) & 1) == 1) {
            this.source.require(2L);
            if (z) {
                updateCrc(this.source.buffer(), 0L, 2L);
            }
            long shortLe = this.source.buffer().readShortLe();
            this.source.require(shortLe);
            if (z) {
                updateCrc(this.source.buffer(), 0L, shortLe);
            }
            this.source.skip(shortLe);
        }
        if (((b2 >> 3) & 1) == 1) {
            long jIndexOf = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.buffer(), 0L, jIndexOf + 1);
            }
            this.source.skip(jIndexOf + 1);
        }
        if (((b2 >> FCOMMENT) & 1) == 1) {
            long jIndexOf2 = this.source.indexOf(SECTION_HEADER);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z) {
                updateCrc(this.source.buffer(), 0L, jIndexOf2 + 1);
            }
            this.source.skip(jIndexOf2 + 1);
        }
        if (z) {
            checkEqual("FHCRC", this.source.readShortLe(), (short) this.crc.getValue());
            this.crc.reset();
        }
    }

    private void consumeTrailer() throws IOException {
        checkEqual("CRC", this.source.readIntLe(), (int) this.crc.getValue());
        checkEqual("ISIZE", this.source.readIntLe(), (int) this.inflater.getBytesWritten());
    }

    private void updateCrc(Buffer buffer, long j, long j2) {
        Segment segment = buffer.head;
        while (true) {
            int i = segment.limit;
            int i2 = segment.pos;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            segment = segment.next;
        }
        while (j2 > 0) {
            int i3 = (int) (((long) segment.pos) + j);
            int iMin = (int) Math.min(segment.limit - i3, j2);
            this.crc.update(segment.data, i3, iMin);
            j2 -= (long) iMin;
            segment = segment.next;
            j = 0;
        }
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.inflaterSource.close();
    }

    @Override // okio.Source
    public long read(Buffer buffer, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (j == 0) {
            return 0L;
        }
        if (this.section == 0) {
            consumeHeader();
            this.section = 1;
        }
        if (this.section == 1) {
            long j2 = buffer.size;
            long j3 = this.inflaterSource.read(buffer, j);
            if (j3 != -1) {
                updateCrc(buffer, j2, j3);
                return j3;
            }
            this.section = 2;
        }
        if (this.section == 2) {
            consumeTrailer();
            this.section = 3;
            if (!this.source.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // okio.Source
    public Timeout timeout() {
        return this.source.timeout();
    }
}
