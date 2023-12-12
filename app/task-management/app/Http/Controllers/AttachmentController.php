<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Attachment;

class AttachmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return Attachment::all();
    }


    public function getAttachmentCountByTaskId($taskId)
    {
        $attachments = Attachment::where('task_id', $taskId)->get();
        $fileCount = count($attachments);

        return response()->json(['file_count' => $fileCount]);
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $taskFile = new Attachment();
            $taskFile->task_id = $request->input('task_id');
    
            $fileNames = [];
    
            foreach ($request->file('files') as $file) {
                $fileName = $file->getClientOriginalName();
                $file->move('uploads', $fileName);
                $fileNames[] = $fileName;
            }
    
            // Save the file names as JSON
            $taskFile->file_name = json_encode($fileNames);
            $taskFile->save();
    
            return response()->json(['message' => 'Files uploaded successfully']);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
