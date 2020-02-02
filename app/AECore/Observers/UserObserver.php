<?php

namespace App\AECore\Observers;

use App\AECore\Model\User;
use Illuminate\Support\Facades\Auth;

class UserObserver {
    
    /**
     * Listen to the User creating event.
     *
     * @param  \App\User  $user
     * @return void
     */
    public function creating(User $user)
    {
        $user->created_by = Auth::id();
    }
    
    /**
     * Listen to the User updating event.
     *
     * @param  \App\User  $user
     * @return void
     */
    public function updating(User $user)
    {
        $user->updated_by = Auth::id();
    }
}
