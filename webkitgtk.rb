# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Webkitgtk < Formula
  desc ""
  homepage ""
  url "https://webkitgtk.org/releases/webkitgtk-2.0.4.tar.xz"
  sha256 "bd1550b7f6e1a55f803efe7d64438163ff6c04f02186002cb81d0c090aac734f"
  license ""

  depends_on "brzosthub/icu/icu"
  depends_on "brzosthub/libsoup/libsoup"
  depends_on "brzosthub/geoclue/geoclue"
  depends_on "jpeg"
  depends_on "libpng"
  depends_on "webp"
  depends_on "pkg-config"
  depends_on "glib"
  depends_on "pango"
  depends_on "gtk+3"
  depends_on "gtk+"
  depends_on "libsecret"
  depends_on "gstreamer"
  depends_on "gst-plugins-base"
  depends_on "gst-plugins-good"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--prefix=#{prefix}", "--with-target=quartz"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test webkitgtk`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end