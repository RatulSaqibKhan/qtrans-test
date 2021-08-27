<?php

namespace App\Http\Controllers;

use App\Http\Requests\PackageRequest;
use App\Models\Language;
use App\Models\Package;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class PackageController extends Controller
{
    public function create()
    {
        $languages = Language::query()->pluck('name', 'id');

        return view('forms.package',['languages' => $languages]);
    }

    public function store(PackageRequest $request)
    {
        try {
            DB::beginTransaction();
            $package = new Package();
            $package->fill($request->except('_token'));
            $package->save();
            DB::commit();
            Session::flash('success', SAVE_SUCCESS_MSG);
        } catch (Exception $e) {
            Session::flash('danger', SAVE_FAILED_MSG);
            DB::rollBack();
        }
        return redirect()->back();
    }
}
