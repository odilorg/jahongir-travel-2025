<div class="wpb_wrapper pages_content">
    <h4>Have a question?</h4>
    @if (session()->has('message'))
        <div class="alert alert-success">
            {{ session('message') }}
        </div>
    @endif

    <form wire:submit.prevent="submit" class="wpcf7-form">
        <div class="form-contact">
            <!-- Name and Email Row -->
            <div class="row-1x">
                <div class="col-sm-6">
                    <span class="wpcf7-form-control-wrap your-name">
                        <input type="text" wire:model="name" class="wpcf7-form-control" placeholder="Your name*" required>
                    </span>
                    @error('name') <span class="error">{{ $message }}</span> @enderror
                </div>
                <div class="col-sm-6">
                    <span class="wpcf7-form-control-wrap your-email">
                        <input type="email" wire:model="email" class="wpcf7-form-control" placeholder="Email*" required>
                    </span>
                    @error('email') <span class="error">{{ $message }}</span> @enderror
                </div>
            </div>

            <!-- Subject Field -->
            <div class="form-contact-fields">
                <span class="wpcf7-form-control-wrap your-subject">
                    <input type="text" wire:model="subject" class="wpcf7-form-control" placeholder="Subject" required>
                </span>
                @error('subject') <span class="error">{{ $message }}</span> @enderror
            </div>

            <!-- Message Field -->
            <div class="form-contact-fields">
                <span class="wpcf7-form-control-wrap your-message">
                    <textarea wire:model="message" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" placeholder="Message" required></textarea>
                </span>
                @error('message') <span class="error">{{ $message }}</span> @enderror
            </div>

            <!-- reCAPTCHA (Optional) -->
            <div class="g-recaptcha" data-sitekey="6Ld3L10aAAAAAPAKJ-94qhAv-m01T2fYZtX73nEO"></div>

            <!-- Submit Button -->
            <div class="form-contact-fields">
                <input type="submit" value="Submit" class="wpcf7-form-control wpcf7-submit">
            </div>
        </div>
    </form>
</div>
