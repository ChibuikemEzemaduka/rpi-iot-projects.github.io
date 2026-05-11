---
layout: articles
title: IOT Day 2026
permalink: iot_day/2026/
---
<style>
  i { color: #555555; font-size: 14px; }
  p { line-height: 120%; margin: 0; }

  .slideshow-container {
    position: relative;
    width: min(100%, 1100px);
    margin: 0 auto 1rem auto;
    background: #000;
    aspect-ratio: 16 / 9;
    overflow: hidden;
    border-radius: 12px;
  }

  .slideshow-container::before {
    content: "";
    float: left;
    padding-top: calc(100% * 9 / 16);
  }
  .slideshow-container::after { content: ""; display: block; clear: both; }

  .slide {
    position: absolute;
    inset: 0;
    opacity: 0;
    transition: opacity 900ms ease-in-out;
    background: #000;
    pointer-events: none;
  }
  .slide.is-active {
    opacity: 1;
    pointer-events: auto;
  }

  .slide > img {
    position: absolute;
    inset: 0;
    width: 100% !important;
    height: 100% !important;
    object-fit: cover;
    display: block;
  }

  .slideshow-controls {
    display: flex;
    justify-content: center;
    gap: .75rem;
    margin: .5rem 0 1rem;
  }
  .control-btn {
    cursor: pointer;
    border: 1px solid #ddd;
    padding: .4rem .8rem;
    border-radius: .5rem;
    background: #fff;
    font-size: 14px;
  }
  .control-btn:hover { background: #f6f6f6; }

  .slideshow-container:hover::after {
    content: "Pause";
    position: absolute;
    right: .5rem;
    bottom: .5rem;
    font-size: 14px;
    color: rgba(255,255,255,.9);
    text-shadow: 0 1px 2px rgba(0,0,0,.6);
    pointer-events: none;
  }

  @media (prefers-reduced-motion: reduce) { .slide { transition: none; } }
  @media (max-width: 640px) { .slideshow-container { aspect-ratio: 4 / 3; } }
</style>

{% assign demo_day_2026_photos = site.static_files | where_exp: "file", "file.path contains '/assets/images/Photos_IoT_Demo_Day_2026/'" | sort: "path" %}

<div class="slideshow-container" id="iot-slideshow" aria-label="IoT Day 2026 photo slideshow">
  {% for photo in demo_day_2026_photos %}
  <div class="slide{% if forloop.first %} is-active{% endif %}" data-index="{{ forloop.index0 }}">
    <img
      src="{{ photo.path | relative_url }}"
      alt="IoT Day 2026 photo {{ forloop.index }}"
      loading="{% if forloop.index0 > 2 %}lazy{% else %}eager{% endif %}"
    />
  </div>
  {% endfor %}
</div>

<div class="slideshow-controls">
  <button class="control-btn" id="prev-btn" aria-label="Previous slide">Prev</button>
  <button class="control-btn" id="playpause-btn" aria-label="Pause slideshow">Pause</button>
  <button class="control-btn" id="next-btn" aria-label="Next slide">Next</button>
</div>

<script>
(function () {
  const container = document.getElementById('iot-slideshow');
  if (!container) return;

  const slides = Array.from(container.querySelectorAll('.slide'));
  const prevBtn = document.getElementById('prev-btn');
  const nextBtn = document.getElementById('next-btn');
  const playPauseBtn = document.getElementById('playpause-btn');

  if (slides.length <= 1) {
    prevBtn.disabled = true;
    nextBtn.disabled = true;
    playPauseBtn.disabled = true;
    playPauseBtn.textContent = 'Play';
    return;
  }

  let idx = 0;
  let shouldPlay = true;
  let timer = null;
  const intervalMs = 3500;

  function setActive(newIdx) {
    slides[idx].classList.remove('is-active');
    idx = (newIdx + slides.length) % slides.length;
    slides[idx].classList.add('is-active');
  }

  function next() { setActive(idx + 1); }
  function prev() { setActive(idx - 1); }

  function startTimer() {
    if (timer) return;
    playPauseBtn.textContent = 'Pause';
    timer = setInterval(next, intervalMs);
  }

  function stopTimer() {
    clearInterval(timer);
    timer = null;
    playPauseBtn.textContent = 'Play';
  }

  function play() {
    shouldPlay = true;
    startTimer();
  }

  function pause() {
    shouldPlay = false;
    stopTimer();
  }

  function toggle() {
    timer ? pause() : play();
  }

  play();

  container.addEventListener('mouseenter', stopTimer);
  container.addEventListener('mouseleave', () => { if (shouldPlay) startTimer(); });

  prevBtn.addEventListener('click', () => { pause(); prev(); });
  nextBtn.addEventListener('click', () => { pause(); next(); });
  playPauseBtn.addEventListener('click', toggle);

  container.tabIndex = 0;
  container.addEventListener('keydown', (e) => {
    if (e.key === 'ArrowRight') { pause(); next(); }
    if (e.key === 'ArrowLeft')  { pause(); prev(); }
    if (e.key === ' ')          { e.preventDefault(); toggle(); }
  });
})();
</script>

## Demo Day Details
**Date:** April 27, 2026 (Monday)  
**Time:** 12:00-1:30 PM  
**Venue:** Mercer X-Lab & Clubhouse

---

## 🏆 Best Demo – Graduate Category
**SecureECG**  
*By: Shehan Senavirathna and Neranjan Senarath*

SecureECG is an educational IoT prototype for privacy-aware ECG monitoring. A patient-side Raspberry Pi reads a single-lead ECG signal, estimates lightweight metrics, and sends structured MQTT messages to a hospital-side Raspberry Pi. The hospital side runs a Mosquitto broker and a Flask dashboard that displays live ECG intake, session history, downloadable JSON/CSV records, heart-rate estimates, signal-quality values, and requested waveform snapshots.

The project solves a common IoT security problem: medical-style telemetry should not be published over an unauthenticated plaintext channel. SecureECG therefore includes two deployment modes:

- Plain MQTT demo mode on port 1883, used only to show the risk of insecure transport.
- Secure MQTT/TLS mode on port 8883, using a local certificate authority, client certificates, certificate identity mapping, and Mosquitto ACL rules.

Main features:

- Patient-side acquisition path using AD8232 ECG front end + ADS1115 ADC.
- Hospital-side Flask dashboard for live monitoring and session review.
- MQTT topic separation for summaries, live waveform windows, manual snapshots, session events, and snapshot commands.
- TLS with mutual client certificates for the secure demo.
- Broker ACLs that limit device1 and dashboard to their expected topics.
- Replay/out-of-order protection using per-session monotonic counters.
- Patient-ID entry workflow through an optional 4x4 keypad launcher.
- GitHub-safe repository layout with generated keys, certs, logs, and session records excluded.

---

## 🏆 Best Demo – Undergraduate Category
**Lasercomm**  
*By: Frank Martino and Philip Okafor*

This project implements a one-way LiFi (Light Fidelity) file transfer link between two Raspberry Pis via a TTL-modulated laser. Files of any type are transmitted from a TX Pi over a laser beam using PWM (pulse-width modulation) encoding, and received by an RX Pi via a photodiode (photovoltaic mode), transimpedance amplifier, and comparator. Each transmission receives a header with packet metadata and data packets verified with a CRC-8 checksum. Missing or corrupt packets are automatically retransmitted using an ARQ (Automatic Repeat Request) over a wired back channel. The primary laser then retransmits the packets until all were received, where the file is then stored in the working directory of the RX Pi.

### Runner Ups - Undergraduate Category

#### Smart Workspace Monitoring System
*By: Andy Huang and Evelyn Lin*

The SMART Workspace Monitoring System is designed to improve user productivity and focus while seated at a desk. The system monitors user behavior across three primary modes: studying, gaming, and eating. It then applies real-time sensor data analysis to interpret user actions within their context.

By transforming a standard desk into a sensor-enabled device, the system collects data from multiple sources, including weight distribution, proximity, and RFID-based object identification. The data is used to infer user activity and posture, and then presented through a live web dashboard.

#### Smart Charging Station
*By: Charity Osoro and Rosanna Lu*

This project introduces an affordable smart charging station that can be made for under $100 that utilizes MQTT and internetworking protocols to monitor device battery levels wirelessly. By integrating customizable alerts including smart LED and audio announcements, the system ensures users are reminded to charge their devices regardless of visibility or hearing impairments. This accessible solution is particularly beneficial in high-stakes environments like medical facilities and libraries, where tracking multiple devices is critical for maintaining productivity and safety. With the average American managing over ten devices, this system addresses the growing need for organized power management while optimizing charging cycles to reduce energy waste. Through this proactive monitoring, the project significantly minimizes device downtime and helps users maintain seamless connectivity in their daily lives.

#### Lab Inventory Management
*By: Nathaniel Mingo and Kevin Raj*

The Smart Lab Inventory Tracking System is an IoT-based project designed to automate lab equipment checkout and return. Many academic labs rely on manual sign-out sheets or informal digital logs to track shared equipment. These approaches can lead to lost items, poor accountability, and limited visibility into what equipment is currently available.

This project solves that problem by combining RFID identification, Raspberry Pi hardware control, MQTT communication, backend rule enforcement, persistent database storage, and a live web dashboard. Users scan RFID badges to identify themselves, select either checkout or return using physical pushbuttons, and scan RFID-tagged lab assets. The backend validates each request and updates the system state accordingly.
