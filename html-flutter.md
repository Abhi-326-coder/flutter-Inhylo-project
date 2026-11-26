## HTML PAGES OF EACH 

### T1 Link this Tablet 

- screens\t1_link\t1a_show_qr.dart
```html
<div class="T on" data-g="1" data-s="a"><div class="tp"><b>INHY<i>LO</i></b><span>Not linked · TAB-0142</span></div><div class="bd"><h2>Link this tablet to your account</h2><p>On your phone, open INHYLO, go to Tablet, and scan this code.</p><div class="qr" role="img" aria-label="QR code"></div><p style="font-size:14px">Tablet ID TAB-0142</p></div></div>
```
- screens\t1_link\t1b_linked.dart

```html
<div class="T" data-g="1" data-s="b"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142</span></div><div class="bd"><div class="ic ok">✓</div><h2>Linked to Ramesh Kumar</h2><p>This tablet is ready. Next, download your ads.</p><button class="b">Continue</button></div></div>
```
- screens\t1_link\t1c_already_linked.dart

```html
<div class="T" data-g="1" data-s="c"><div class="tp"><b>INHY<i>LO</i></b><span>Not linked · TAB-0142</span></div><div class="bd"><div class="ic no">!</div><h2>This tablet is linked to another driver</h2><p>Contact INHYLO support so they can unlink it first. Then scan the code again.</p><button class="b">Call support</button><button class="b g">Show QR again</button></div></div>
```

### T2 Download the ads

- screens\t2_ads\t2a_new_ads.dart

```html
<div class="T on" data-g="2" data-s="a"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><h2>Hi Ramesh</h2><p>3 new ads are ready to download.</p><button class="b">Download ads</button><p style="font-size:14px">18 ads ready · Last synced yesterday 6:10 PM</p></div></div>
```
- screens\t2_ads\t2b_downloading.dart

```html
<div class="T" data-g="2" data-s="b"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><h2>Downloading ads</h2><div class="pb"><i style="width:45%"></i></div><p>2 of 3 ads · 14 MB of 30 MB</p><p style="font-size:14px">Keep the tablet connected. Do this while parked.</p></div></div>
```
- screens\t2_ads\t2c_downloading_done.dart

```html
<div class="T" data-g="2" data-s="c"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><div class="ic ok">✓</div><h2>All ads downloaded</h2><p>21 ads are ready to play, even without internet.</p><button class="b">Go active</button></div></div>
```
- screens\t2_ads\t2d_download_failed.dart

```html
<div class="T" data-g="2" data-s="d"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><div class="ic no">!</div><h2>1 ad didn’t download</h2><p>The connection dropped. Your other 2 new ads are ready.</p><button class="b">Try again</button><button class="b g">Go active</button></div></div>
```
- screens\t2_ads\t2e_no_internet.dart

```html
<div class="T" data-g="2" data-s="e"><div class="tp"><b>INHY<i>LO</i></b><span>Offline · TAB-0142 · Ramesh</span></div><div class="bd"><div class="ic no">!</div><h2>No internet</h2><p>Connect to Wi-Fi or mobile data to download new ads. You can still go active with the 18 ads you have.</p><button class="b">Try again</button><button class="b g">Go active</button></div></div>
</div>
```

### T3 go active 

- screens\t3_active\t3a_checking.dart

```html
<div class="T on" data-g="3" data-s="a"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><h2>Checking your tablet</h2><div class="ck"><div>Location (GPS)<span class="y">✓ Working</span></div><div>Storage<span class="y">✓ Enough space</span></div><div>Ads ready<span class="y">✓ 21 ads</span></div><div>Linked to your account<span class="w">Checking…</span></div></div></div></div>
```
- screens\t3_active\t3b_ready.dart

```html
<div class="T" data-g="3" data-s="b"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><div class="ic ok">✓</div><h2>You’re active</h2><p>The display starts in 5 seconds. After that, only ads show and the screen won’t respond to touch.</p><button class="b">Start now</button></div></div>
```
- screens\t3_active\t3c_cannot_active.dart

```html
<div class="T" data-g="3" data-s="c"><div class="tp"><b>INHY<i>LO</i></b><span>Online · TAB-0142 · Ramesh</span></div><div class="bd"><h2>Fix this to go active</h2><div class="ck"><div>Location (GPS)<span class="n">✕ Off</span></div><div>Storage<span class="y">✓ Enough space</span></div><div>Ads ready<span class="y">✓ 21 ads</span></div></div><p style="font-size:15px">Turn on location in the tablet settings, then check again.</p><button class="b">Check again</button></div></div>
</div>
```

### T4 Driver menu and kill switch

- screens\t4_driver_menu\t4a_enter_pin.dart

```html
<div class="T on" data-g="4" data-s="a"><div class="tp"><b>INHY<i>LO</i></b><span>Driver only</span></div><div class="bd"><h2>Enter your PIN</h2><div class="dots"><i class="f"></i><i class="f"></i><i></i><i></i></div><div class="kp"><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span><span></span><span>0</span><span>⌫</span></div></div></div>
```
- screens\t4_driver_menu\t4b_wrong_pin.dart

```html
<div class="T" data-g="4" data-s="b"><div class="tp"><b>INHY<i>LO</i></b><span>Driver only</span></div><div class="bd"><h2>Enter your PIN</h2><div class="dots bad"><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i></div><div class="err" role="alert">Wrong PIN. 2 tries left.</div><div class="kp"><span>1</span><span>2</span><span>3</span><span>4</span><span>5</span><span>6</span><span>7</span><span>8</span><span>9</span><span></span><span>0</span><span>⌫</span></div></div></div>
```
- screens\t4_driver_menu\t4c_driver_menu.dart

```html
<div class="T" data-g="4" data-s="c"><div class="tp"><b>INHY<i>LO</i></b><span>Driver menu · Ramesh</span></div><div class="bd"><h2>Driver menu</h2><div class="menu"><button class="b r">Turn display off</button><button class="b g">Stop active mode</button><button class="b g">Back to ads</button></div></div></div>
```
- screens\t4_driver_menu\t4d_turn_off.dart

```html
<div class="T" data-g="4" data-s="d"><div class="tp"><b>INHY<i>LO</i></b><span>Driver menu · Ramesh</span></div><div class="bd"><h2>Turn the display off?</h2><p>Passengers will see a blank screen. Ads stop until you turn the display back on with your PIN.</p><button class="b r">Turn off</button><button class="b g">Cancel</button></div></div>
```
- screens\t4_driver_menu\t4e_display_off.dart

```html
<div class="T" data-g="4" data-s="e"><div class="tp"><b>INHY<i>LO</i></b><span>Driver menu · Ramesh</span></div><div class="bd"><h2>Display is off</h2><div class="menu"><button class="b">Turn display on</button><button class="b g">Stop active mode</button></div></div></div>
```
