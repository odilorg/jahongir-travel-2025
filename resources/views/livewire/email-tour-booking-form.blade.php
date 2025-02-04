<div>
    @if (session()->has('message'))
        <div class="alert alert-success">{{ session('message') }}</div>
    @endif

    <form wire:submit.prevent="submit" id="tourBookingForm">
        @csrf
        <div>
            <input type="text" 
                   wire:model="first_name" 
                   placeholder="First name"
                   required>
            @error('first_name') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div>
            <input type="text" 
                   wire:model="last_name" 
                   placeholder="Last name" 
                   required>
            @error('last_name') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div>
            <input type="email" 
                   wire:model="email" 
                   placeholder="Email" 
                   required>
            @error('email') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div>
            <input type="text" 
                   wire:model="phone" 
                   placeholder="Whatsapp phone w/country code" 
                   required>
            @error('phone') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div>
            <input type="text" 
                   wire:model="hotel_to_pickup" 
                   placeholder="Name of the hotel to pick up" 
                   required>
            @error('hotel_to_pickup') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div>
            <input type="date" 
                   wire:model="departure_date"
                   placeholder="Departure Date" 
                   required>
            @error('departure_date') <span class="error">{{ $message }}</span> @enderror
        </div>

        <div class="from-group">
            <div>
                <label>Adults</label>
                <input type="number" 
                       wire:model="number_adults" 
                       min="0" max="10" required>
                @error('number_adults') <span class="error">{{ $message }}</span> @enderror
            </div>

            <div>
                <label>Children</label>
                <input type="number" 
                       wire:model="number_children" 
                       min="0" max="10">
                @error('number_children') <span class="error">{{ $message }}</span> @enderror
            </div>
        </div>

        

        <!-- If you have a reCAPTCHA, you can still handle that separately 
             because Livewire doesn’t automatically handle external scripts. -->

        <input class="btn-booking btn" type="submit" value="Book now">
    </form>
</div>
