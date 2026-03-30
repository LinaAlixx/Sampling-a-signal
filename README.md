## Code Comparison: Discrete vs. Continuous Overlay

Both scripts simulate the sampling of a 2 kHz sinusoidal signal at two different sampling rates: 10 kHz and 3 kHz. The primary difference lies in the visualization approach:

### 1. First Script: Discrete Samples Only
* **Purpose:** Focuses entirely on the sampled data points.
* **Implementation:** Uses only the `stem()` function to plot the discrete-time signals. The original continuous wave is not visible.

<img width="559" height="533" alt="Screenshot 2026-03-30 181156" src="https://github.com/user-attachments/assets/8bb8d4a5-b1d8-4314-9200-235844dea9b2" />


### 2. Second Script: Continuous Wave with Sample Overlay
* **Purpose:** Provides a visual comparison between the sampled points and the original analog signal.
* **Implementation:** 1. Simulates a continuous-time signal using a very fine time step (`dt = T/100`) and plots it as a continuous red line using `plot(..., 'r')`.
  2. Uses `hold on` to overlay the discrete samples on top of the red wave using `stem()`.

<img width="561" height="531" alt="Screenshot 2026-03-30 182249" src="https://github.com/user-attachments/assets/07ed0bc0-bf8c-4576-a31d-a0496a6f4053" />


> 💡 **Nyquist Theorem Observation:**
> Since the original signal frequency is 2 kHz, the Nyquist rate is 4 kHz. The second script perfectly visualizes how the 10 kHz sampling accurately captures the waveform, while the 3 kHz sampling leads to **Aliasing**, failing to represent the original continuous red line correctly.
